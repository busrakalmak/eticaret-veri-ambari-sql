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

### 7. 
Bu sorgunun gereksinimi verilen çalışma listesinde yer almadığı için ayrıca uygulanmamıştır.

### 8. Ortalama kargo ücretinin üzerinde kargo ödeyen siparişler
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

## Geliştirici

**Büşra Kalmak**

GitHub: [busrakalmak94-arch](https://github.com/busrakalmak94-arch)
