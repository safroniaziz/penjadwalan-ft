<li class="header" style="font-weight:bold;">MENU UTAMA</li>
<li class="{{ set_active('operator.dashboard') }}">
    <a href="{{ route('operator.dashboard') }}">
        <i class="fa fa-dashboard"></i> <span>Dashboard</span>
    </a>
</li>

<li class="{{ set_active('operator.ruangan') }}">
    <a href="{{ route('operator.ruangan') }}">
        <i class="fa fa-clock-o"></i> <span>Manajemen Ruangan</span>
    </a>
</li>

<li class="{{ set_active('operator.matkul') }}">
    <a href="{{ route('operator.matkul') }}">
        <i class="fa fa-users"></i> <span>Mata Kuliah</span>
    </a>
</li>
<li class="{{ set_active('operator.jadwal') }}">
    <a href="{{ route('operator.jadwal') }}">
        <i class="fa fa-users"></i> <span>Jadwal Perkuliahan</span>
    </a>
</li>

<li class="">
    <a href="">
        <i class="fa fa-power-off text-danger"></i> <span class="text-danger">Keluar</span>
    </a>
</li>