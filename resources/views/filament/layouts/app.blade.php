<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Filament Admin</title>

    <!-- Menambahkan favicon di sini -->
    <link rel="icon" href="{{ asset('favicon.ico') }}" type="image/x-icon">
    <link rel="icon" href="{{ asset('favicon.png') }}" type="image/png">


    @vite(['resources/css/app.css', 'resources/js/app.js'])  <!-- Menambahkan Vite Assets -->
</head>
<body>
    <div id="app">
        @yield('content')  <!-- Konten utama halaman akan dipasang di sini -->
    </div>

    @livewireScripts
</body>
</html>
