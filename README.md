# E-Ticaret Veri Ambarı - SQL

Bu proje, MariaDB kullanılarak oluşturulan bir E-Ticaret Veri Ambarı üzerinde ileri seviye SQL sorgularını uygulamak amacıyla hazırlanmıştır.

## Kullanılan Teknolojiler

- MariaDB
- SQL
- phpMyAdmin

## Veritabanı Tabloları

- Musteri
- Siparis
- SiparisDetay
- Urun
- Kategori
- Satici

## Uygulanan SQL Sorguları

### 1. Her müşterinin toplam harcaması
Kullanılan SQL yapıları:
- JOIN
- GROUP BY
- SUM
- ORDER BY

### 2. En çok satan ilk 3 ürün
Kullanılan SQL yapıları:
- GROUP BY
- SUM
- ORDER BY
- LIMIT

### 3. Şehre göre sipariş sayısı ve ortalama tutar
Kullanılan SQL yapıları:
- JOIN
- GROUP BY
- AVG
- HAVING

### 4. Aylık ciro raporu
Kullanılan SQL yapıları:
- EXTRACT
- GROUP BY
- SUM
- ORDER BY

### 5. Hiç sipariş vermeyen müşteriler
Kullanılan SQL yapıları:
- LEFT JOIN
- IS NULL

Mevcut veri kümesinde tüm müşterilerin en az bir siparişi bulunduğu için sonuç kümesi boş dönmüştür.

### 6. Müşteri bazında kümülatif harcama
Kullanılan SQL yapıları:
- JOIN
- GROUP BY
- Window Function
- SUM() OVER()
- PARTITION BY

### 7. Ortalama kargo ücretinin üzerinde kargo ödeyen siparişler
Kullanılan SQL yapıları:
- Subquery
- JOIN
- AVG
- WHERE

## Projenin Amacı

Bu çalışma ile ilişkisel veriler üzerinde ileri seviye SQL sorguları kullanılarak müşteri harcamaları, ürün satışları, şehir bazlı siparişler, aylık ciro, kümülatif harcama ve kargo ücretleri analiz edilmiştir.

## SQL Konuları

- INNER JOIN
- LEFT JOIN
- GROUP BY
- SUM()
- AVG()
- COUNT()
- HAVING
- ORDER BY
- LIMIT
- EXTRACT()
- Subquery
- Window Function
- PARTITION BY
- IS NULL

## Örnek Sonuçlar

### Müşteri Toplam Harcamaları

Sorgu sonucunda müşterilerin toplam harcamaları hesaplanmış ve büyükten küçüğe sıralanmıştır.

| Müşteri | Toplam Harcama |
|---|---:|
| Can Aydın | 13.845 TL |
| Ayşe Yılmaz | 11.650 TL |
| Merve Ak | 9.880 TL |
| Mehmet Demir | 9.435 TL |
| Ali Şahin | 7.560 TL |

### En Çok Satan 3 Ürün

| Ürün Kodu | Toplam Satış |
|---|---:|
| P410 | 170 |
| P630 | 64 |
| P310 | 34 |

### Aylık Ciro

2024 yılı için aylık ciro hesaplanmıştır. En yüksek aylık ciro **Aralık ayında 17.665 TL** olarak gerçekleşmiştir.

### Sipariş Vermeyen Müşteriler

Mevcut veri kümesinde tüm müşterilerin en az bir siparişi bulunduğundan sorgu sonucunda **0 kayıt** döndürülmüştür.

### Kümülatif Harcama

Window Function kullanılarak müşterilerin sipariş tarihine göre **kümülatif harcamaları** hesaplanmıştır.

### Kargo Analizi

Ortalama kargo ücretinin üzerinde ödeme yapılan siparişler subquery ve JOIN kullanılarak belirlenmiştir.

## Geliştirici

**Büşra Kalmak**

GitHub: [busrakalmak94-arch](https://github.com/busrakalmak94-arch)
