USE eticaret_veri_ambari;

-- 1. Her müşterinin toplam harcaması
SELECT 
    m.MusteriID,
    m.Ad,
    SUM(sd.Adet * sd.BirimFiyat) AS ToplamHarcama
FROM Musteri m
JOIN Siparis s ON m.MusteriID = s.MusteriID
JOIN SiparisDetay sd ON s.SiparisNo = sd.SiparisNo
GROUP BY m.MusteriID, m.Ad
ORDER BY ToplamHarcama DESC;


-- 2. En çok satan ilk 3 ürün
SELECT 
    UrunKodu,
    SUM(Adet) AS ToplamSatis
FROM SiparisDetay
GROUP BY UrunKodu
ORDER BY ToplamSatis DESC
LIMIT 3;


-- 3. Şehre göre sipariş sayısı ve ortalama tutar
SELECT 
    m.Sehir,
    COUNT(s.SiparisNo) AS SiparisSayisi,
    AVG(sd.ToplamTutar) AS OrtalamaTutar
FROM Musteri m
JOIN Siparis s ON m.MusteriID = s.MusteriID
JOIN (
    SELECT 
        SiparisNo,
        SUM(Adet * BirimFiyat) AS ToplamTutar
    FROM SiparisDetay
    GROUP BY SiparisNo
) sd ON s.SiparisNo = sd.SiparisNo
GROUP BY m.Sehir
HAVING COUNT(s.SiparisNo) > 1;


-- 4. Aylık ciro raporu
SELECT 
    EXTRACT(YEAR FROM s.Tarih) AS Yil,
    EXTRACT(MONTH FROM s.Tarih) AS Ay,
    SUM(sd.Adet * sd.BirimFiyat) AS AylikCiro
FROM Siparis s
JOIN SiparisDetay sd ON s.SiparisNo = sd.SiparisNo
GROUP BY 
    EXTRACT(YEAR FROM s.Tarih),
    EXTRACT(MONTH FROM s.Tarih)
ORDER BY Yil, Ay;


-- 5. Hiç sipariş vermeyen müşteriler
SELECT 
    m.MusteriID,
    m.Ad,
    m.Sehir
FROM Musteri m
LEFT JOIN Siparis s ON m.MusteriID = s.MusteriID
WHERE s.SiparisNo IS NULL;


-- 6. Müşteri bazında kümülatif harcama
SELECT
    m.MusteriID,
    m.Ad,
    s.SiparisNo,
    s.Tarih,
    SUM(sd.Adet * sd.BirimFiyat) AS SiparisTutari,
    SUM(SUM(sd.Adet * sd.BirimFiyat)) OVER (
        PARTITION BY m.MusteriID
        ORDER BY s.Tarih, s.SiparisNo
    ) AS KumulatifHarcama
FROM Musteri m
JOIN Siparis s ON m.MusteriID = s.MusteriID
JOIN SiparisDetay sd ON s.SiparisNo = sd.SiparisNo
GROUP BY 
    m.MusteriID,
    m.Ad,
    s.SiparisNo,
    s.Tarih
ORDER BY 
    m.MusteriID,
    s.Tarih,
    s.SiparisNo;


-- 7. Ortalama kargo ücretinin üzerinde kargo ödeyen siparişler
SELECT 
    s.SiparisNo,
    m.Ad,
    m.Sehir,
    s.KargoFirma,
    s.KargoUcret
FROM Siparis s
JOIN Musteri m ON s.MusteriID = m.MusteriID
WHERE s.KargoUcret > (
    SELECT AVG(KargoUcret)
    FROM Siparis
);
