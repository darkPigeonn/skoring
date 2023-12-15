import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html_table/flutter_html_table.dart';

class ResourcesPage extends StatefulWidget {
  const ResourcesPage({super.key});

  @override
  State<ResourcesPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ResourcesPage> {
  final htmlData = r"""
<p style="text-align: center;">
  <strong>
    <span style="font-size:8pt;">SKORING ANALISIS KELAYAKAN KREDIT</span>
  </strong>
</p>
<p>
  <br>
</p>
<div align="left">
  <table style="border:none;border-collapse:collapse;">
    <tbody>
      <tr>
        <td rowspan="2" style="color:#002060;background-color:#002060;border-left:solid #00b050 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">No</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Kategori</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Dimensi</span>
            </strong>
          </p>
        </td>
        <td colspan="2" rowspan="2" style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Indikator</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Validasi Analis atas Indikator penilaian</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Kriteria</span>
            </strong>
          </p>
        </td>
        <td style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Nilai</span>
            </strong>
          </p>
        </td>
        <td style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Skor</span>
            </strong>
          </p>
        </td>
        <td style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Nilai x Skor</span>
            </strong>
          </p>
        </td>
        <td style="color:#002060;background-color:#002060;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Keterangan</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <br>
        </td>
        <td style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:12pt;">Maksimal</span>
            </strong>
          </p>
        </td>
        <td style="color:#002060;background-color:#002060;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #00b050 0.8333325pt;">
          <br>
        </td>
        <td style="color:#002060;background-color:#002060;border: solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td colspan="8" style="background-color:#f2f2f2;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:13.999999999999998pt;">Total Skor</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#f2f2f2;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: right;">
            <strong>
              <span style="font-size:13.999999999999998pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#f2f2f2;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #00b050 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:13.999999999999998pt;">72</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffeb9c;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c5700;font-size:12pt;">Layak dengan catatan</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="color:#548135;background-color:#548135;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: right;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">1</span>
            </strong>
          </p>
        </td>
        <td colspan="7" style="color:#548135;background-color:#548135;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">Charakter</span>
            </strong>
          </p>
        </td>
        <td style="color:#548135;background-color:#548135;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">27</span>
            </strong>
          </p>
        </td>
        <td style="color:#548135;background-color:#548135;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: right;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">22</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffeb9c;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c5700;font-size:12pt;">Layak dengan catatan</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="6" style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Dimensi Kepribadian / Integritas</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">a</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Penilaian masyarakat sekitar terhadap calon debitur</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Cukup</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">50</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">b</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Sikap calon debitur</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kooperatif</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">5</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">5</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">c</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Karakter berdasarkan catatan SLIK</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Tidak pernah tercatat sebagai debitur bermasalah</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">6</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">6</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">d</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Karakter berdasarkan&nbsp;</span>
            </strong>
            <strong>
              <em>
                <span style="font-size:12pt;">trade checkin</span>
              </em>
            </strong>
            <strong>
              <span style="font-size:12pt;">g &amp; atau catatan kepolisian</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kadang bermasalah dengan mitra bisnis</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">50</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">6</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">e</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Harmonisasi hubungan keluarga</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Satu istri/suami</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Dimensi Charakter lain, selain point a-e</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">f</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Lain-lain charakter yang di anggap berpengaruh terhadap keamanan pinjaman bank</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kebiasaan di sosmed menunjukan postingan yang baik , - Saat ini sedang menikmati pinjaman pada Koperasi ABCD</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Baik</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#e2efd9;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="color:#7f7f7f;background-color:#7f7f7f;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: right;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">2</span>
            </strong>
          </p>
        </td>
        <td colspan="7" style="color:#7f7f7f;background-color:#7f7f7f;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">Capacity</span>
            </strong>
          </p>
        </td>
        <td style="color:#7f7f7f;background-color:#7f7f7f;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">24</span>
            </strong>
          </p>
        </td>
        <td style="color:#7f7f7f;background-color:#7f7f7f;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">18</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffeb9c;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c5700;font-size:12pt;">Layak dengan Catatan</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Dimensi lama usaha</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">a</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Lama usaha sejak didirikan hingga saat ini</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Lebih dari 2 tahun</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="12" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Dimensi Catatan Usaha</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">a</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Memiliki catatan-catatan usaha (catatan hutang piutang, pembelian, persediaan dll)</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">sebagian</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">50</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">1</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">b</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Rata-rata jumlah pelanggan tetap yang dimiliki setiap bulannya (orang)</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">&gt; 100</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">c</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Rata-rata pendapatan setiap bulannya</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">&gt; 3 Juta</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">d</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Jumlah pesaing untuk produk sejenis</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Ada beberapa</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">50</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">e</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Aset usaha lebih besar dari jumlah pinjaman</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Lebih besar dari Jumlah Pinjaman</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">f</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Jangkauan wilayah pemasaran produk</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Lokal</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">60</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: right;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">g</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Status pemohon dalam perusahaan</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kuasa Direktur</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">0</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d8d8d8;border: solid #000000 0.8333325pt;">
          <p style="text-align: right;">
            <strong>
              <span style="font-size:12pt;">0</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffc7ce;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c0006;font-size:12pt;">Tidak baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#833c0b;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: right;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">3</span>
            </strong>
          </p>
        </td>
        <td colspan="7" style="background-color:#833c0b;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">Capital</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#833c0b;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">18</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#833c0b;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">9</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffeb9c;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c5700;font-size:12pt;">Layak dengan Catatan</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td rowspan="5" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="5" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="5" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">a</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Jumlah modal usaha selain dari pinjaman</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Sama dengan 30% modal milik sendiri</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">50</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">6</span>
            </strong>
          </p>
        </td>
        <td rowspan="2" style="background-color:#fbe4d5;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <br>
        </td>
      </tr>
      <tr>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">b</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Apakah tidak mempunyai hutang di tempat lain ?</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Ya</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">c</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Trend pertumbuhan modal perusahaan 3 tahun terakhir</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Berkurang</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">0</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">0</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffc7ce;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c0006;font-size:12pt;">Tidak baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">d</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">ROE bulan berjalan</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">&lt;7%</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">50</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fbe4d5;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#2f5496;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: right;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">4</span>
            </strong>
          </p>
        </td>
        <td colspan="7" style="background-color:#2f5496;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">Collateral</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#2f5496;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">19</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#2f5496;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">15</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffeb9c;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c5700;font-size:12pt;">Layak dengan Catatan</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="5" style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Agunan</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">a</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Status kepemilikan agunan</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Milik Bersama</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">90</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">5</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">5</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td rowspan="4" style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="4" style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">b</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Besaran nilai taksasi jaminan sebanding dengan besarnya agunan</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">CEV lebih dari 110%</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">c</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Jenis &amp; jumlah ragam agunan</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Tanah dan bangunan</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">d</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Status agunan &amp; obyek usaha yang dibiayai</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Agunan tidak menjadi satu dengan obyek usaha yang dibiayai</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">0</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">4</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">0</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffc7ce;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c0006;font-size:12pt;">Tidak baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">e</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Lokasi agunan</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Di tengah kota dan pusat niaga</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#d9e2f3;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#bf9000;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: right;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">5</span>
            </strong>
          </p>
        </td>
        <td colspan="7" style="background-color:#bf9000;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">Condition Of Economy</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#bf9000;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">12</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#bf9000;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;border-bottom:solid #000000 1.666665pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#ffffff;font-size:13.999999999999998pt;">9</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#ffeb9c;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="color:#9c5700;font-size:12pt;">Layak dengan Catatan</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="2" style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kondisi Genaral yang bersifat Global</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">a</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Nilai pasar dari produk obyek usaha yang dibiayai</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Bernilai ekonomis tinggi</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">100</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 1.666665pt;border-bottom:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-top:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">b</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Animo permintaan pasar global terhadap produk usaha yang di biayai</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Tetap</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">50</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">3</span>
            </strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">2</span>
            </strong>
          </p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;">
          <p style="text-align: center;">
            <strong>
              <span style="font-size:12pt;">Kurang baik</span>
            </strong>
          </p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td rowspan="3" style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;"><strong><span style="font-size:12pt;">Kondisi ekonomi yang bersifat khusus</span></strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;"><strong><span style="font-size:12pt;">a</span></strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <p style="text-align: center;"><strong><span style="font-size:12pt;">Trend pertumbuhan laba usaha 3 tahun terakhir</span></strong>
          </p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;">
          <br>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">Tetap</span></strong></p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">50</span></strong></p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">3</span></strong></p>
        </td>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">2</span></strong></p>
        </td>
        <td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">Kurang baik</span></strong></p>
        </td>
      </tr>
      <tr>
        <td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><br></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><br></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">b</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">Animo permintaan pasar akan obyek usaha yang di biayai</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><br></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">Meningkat</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">100</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">2</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">2</span></strong></p></td><td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">baik</span></strong></p></td>
      </tr><tr><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><br></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><br></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">c</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">Legalitas usaha yang dibiayai dibuktikan dengan kelengkapan ijin usaha</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><br></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">Ijin Usaha lengkap 100%</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">100</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">2</span></strong></p></td><td style="background-color:#fef2cb;border: solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">2</span></strong></p></td><td style="border-left:solid #000000 0.8333325pt;border-right:solid #000000 0.8333325pt;border-bottom:solid #000000 0.8333325pt;"><p style="text-align: center;"><strong><span style="font-size:12pt;">baik</span></strong></p></td></tr>
    </tbody>
  </table>
</div><p><br></p><p><br></p>

""";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 100,
        width: 100,
        child: Html(
          data: htmlData,
          shrinkWrap: true,
          style: {
            "table": Style(
              height: Height.auto(),
              width: Width.auto(),
            ),
            "tr": Style(
              height: Height.auto(),
              width: Width.auto(),
            ),
            "th": Style(
              padding: HtmlPaddings.all(6),
              height: Height.auto(),
              border: const Border(
                left: BorderSide(color: Colors.black, width: 0.5),
                bottom: BorderSide(color: Colors.black, width: 0.5),
                top: BorderSide(color: Colors.black, width: 0.5),
              ),
            ),
            "td": Style(
              padding: HtmlPaddings.all(6),
              height: Height.auto(),
              border: const Border(
                left: BorderSide(color: Colors.black, width: 0.5),
                bottom: BorderSide(color: Colors.black, width: 0.5),
                top: BorderSide(color: Colors.black, width: 0.5),
                right: BorderSide(color: Colors.black, width: 0.5),
              ),
            ),
            "col": Style(
              height: Height.auto(),
              width: Width.auto(),
            ),
          },
          extensions: const [TableHtmlExtension()],
        ),
      ),
    );
  }
}
