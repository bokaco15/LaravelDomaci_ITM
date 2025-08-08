@extends("layout")

@section("pageHeading") Contact @endsection

@section("sadrzaj") 

<div class="container">
    <h3>Ovo je kontakt stranica</h3> <hr>
<form>
  <div class="mb-3">
    <label class="form-label">Ime</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label class="form-label">Prezime</label>
    <input type="text" class="form-control">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d45327.77305993552!2d19.163610081158982!3d44.76070399393353!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475be91cb02d7249%3A0xde5f5ab6329ada88!2sBijeljina!5e0!3m2!1sbs!2sba!4v1752525412297!5m2!1sbs!2sba" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

<br><br>
</div>

@endsection