<div class="main-content">

    <h3><i class="fa fa-edit"></i>Current Address</h3>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <select class="form-control" value="${user?.userAddress?.tempZone}" "name="tempZone" style="width:100%;" data-rel="chosen">
                        <option>Bagmati</option>
                        <option>Bheri</option>
                        <option>Dhawalagiri</option>
                        <option>Gandaki</option>
                        <option>Janakpur</option>
                        <option>Karnali</option>
                        <option>Koshi</option>
                        <option>Lumbini</option>
                        <option>Mahakali</option>
                        <option>Mechi</option>
                        <option>Narayani</option>
                        <option>Rapti</option>
                        <option>Sagarmatha</option>
                        <option>Seti</option>
                    </select>
                    <span class="help-block col-sm-8">Zone</span>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <select class="form-control" value="${user?.userAddress?.tempDistrict}" name="tempDistrict" style="width:100%;" data-rel="chosen">
                        <option>Achham</option>
                        <option>Arghakhanchi</option>
                        <option>Baglung</option>
                        <option>Baitadi</option>
                        <option>Bajhang</option>
                        <option>Bajura</option>
                        <option>Banke</option>
                        <option>Bara</option>
                        <option>Bardiya</option>
                        <option>Bhaktapur</option>
                        <option>Bhojpur</option>
                        <option>Chitwan</option>
                        <option>Dadeldhura</option>
                        <option>Dailekh</option>
                        <option>Dang</option>
                        <option>Darchula</option>
                        <option>Dhading</option>
                        <option>Dhankuta</option>
                        <option>Dhanusa</option>
                        <option>Dholkha</option>
                        <option>Dolpa</option>
                        <option>Doti</option>
                        <option>Gorkha</option>
                        <option>Gulmi</option>
                        <option>Humla</option>
                        <option>Ilam</option>
                        <option>Jajarkot</option>
                        <option>Jhapa</option>
                        <option>Jumla</option>
                        <option>Kailali</option>
                        <option>Kalikot</option>
                        <option>Kanchanpur</option>
                        <option>Kapilvastu</option>
                        <option>Kaski</option>
                        <option>Kathmandu</option>
                        <option>Kavrepalanchok</option>
                        <option>Khotang</option>
                        <option>Lalitpur</option>
                        <option>Lamjung</option>
                        <option>Mahottari</option>
                        <option>Makwanpur</option>
                        <option>Manang</option>
                        <option>Morang</option>
                        <option>Mugu</option>
                        <option>Mustang</option>
                        <option>Myagdi</option>
                        <option>Nawalparasi</option>
                        <option>Nuwakot</option>
                        <option>Okhaldhunga</option>
                        <option>Palpa</option>
                        <option>Panchthar</option>
                        <option>Parbat</option>
                        <option>Parsa</option>
                        <option>Pyuthan</option>
                        <option>Ramechhap</option>
                        <option>Rasuwa</option>
                        <option>Rautahat</option>
                        <option>Rolpa</option>
                        <option>Rukum</option>
                        <option>Rupandehi</option>
                        <option>Salyan</option>
                        <option>Sankhuwasabha</option>
                        <option>Saptari</option>
                        <option>Sarlahi</option>
                        <option>Sindhuli</option>
                        <option>Sindhupalchok</option>
                        <option>Siraha</option>
                        <option>Solukhumbu</option>
                        <option>Sunsari</option>
                        <option>Surkhet</option>
                        <option>Syangja</option>
                        <option>Tanahu</option>
                        <option>Taplejung</option>
                        <option>Terhathum</option>
                        <option>Udayapur</option>
                    </select>
                    <span class="help-block col-sm-8">District</span>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" class="form-control" value="${user?.userAddress?.tempTole}" name="tempTole" placeholder="Tole"/>
                </div>
                <span class="help-block col-sm-8">ex. Abc</span>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
                    <input type="text" id="ward_no" name="tempWardNo" value="${user?.userAddress?.tempWardNo}" class="form-control date-picker" placeholder="Ward No."
                           oninput="validate('ward_no', event)"/>
                </div>
                <span class="help-block col-sm-8">ex. 1</span>
            </div>
        </div>
    </div>

    <h3><i class="fa fa-edit"></i>Permanent Address</h3>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <select class="form-control" name="pemZone" value="${user?.userAddress?.pemZone}" style="width:100%;" data-rel="chosen">
                        <option>Bagmati</option>
                        <option>Bheri</option>
                        <option>Dhawalagiri</option>
                        <option>Gandaki</option>
                        <option>Janakpur</option>
                        <option>Karnali</option>
                        <option>Koshi</option>
                        <option>Lumbini</option>
                        <option>Mahakali</option>
                        <option>Mechi</option>
                        <option>Narayani</option>
                        <option>Rapti</option>
                        <option>Sagarmatha</option>
                        <option>Seti</option>
                    </select>
                    <span class="help-block col-sm-8">Zone</span>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="controls">
                    <select class="form-control" value="${user?.userAddress?.pemDistrict}" name="pemDistrict" style="width:100%;" data-rel="chosen">
                        <option>Achham</option>
                        <option>Arghakhanchi</option>
                        <option>Baglung</option>
                        <option>Baitadi</option>
                        <option>Bajhang</option>
                        <option>Bajura</option>
                        <option>Banke</option>
                        <option>Bara</option>
                        <option>Bardiya</option>
                        <option>Bhaktapur</option>
                        <option>Bhojpur</option>
                        <option>Chitwan</option>
                        <option>Dadeldhura</option>
                        <option>Dailekh</option>
                        <option>Dang</option>
                        <option>Darchula</option>
                        <option>Dhading</option>
                        <option>Dhankuta</option>
                        <option>Dhanusa</option>
                        <option>Dholkha</option>
                        <option>Dolpa</option>
                        <option>Doti</option>
                        <option>Gorkha</option>
                        <option>Gulmi</option>
                        <option>Humla</option>
                        <option>Ilam</option>
                        <option>Jajarkot</option>
                        <option>Jhapa</option>
                        <option>Jumla</option>
                        <option>Kailali</option>
                        <option>Kalikot</option>
                        <option>Kanchanpur</option>
                        <option>Kapilvastu</option>
                        <option>Kaski</option>
                        <option>Kathmandu</option>
                        <option>Kavrepalanchok</option>
                        <option>Khotang</option>
                        <option>Lalitpur</option>
                        <option>Lamjung</option>
                        <option>Mahottari</option>
                        <option>Makwanpur</option>
                        <option>Manang</option>
                        <option>Morang</option>
                        <option>Mugu</option>
                        <option>Mustang</option>
                        <option>Myagdi</option>
                        <option>Nawalparasi</option>
                        <option>Nuwakot</option>
                        <option>Okhaldhunga</option>
                        <option>Palpa</option>
                        <option>Panchthar</option>
                        <option>Parbat</option>
                        <option>Parsa</option>
                        <option>Pyuthan</option>
                        <option>Ramechhap</option>
                        <option>Rasuwa</option>
                        <option>Rautahat</option>
                        <option>Rolpa</option>
                        <option>Rukum</option>
                        <option>Rupandehi</option>
                        <option>Salyan</option>
                        <option>Sankhuwasabha</option>
                        <option>Saptari</option>
                        <option>Sarlahi</option>
                        <option>Sindhuli</option>
                        <option>Sindhupalchok</option>
                        <option>Siraha</option>
                        <option>Solukhumbu</option>
                        <option>Sunsari</option>
                        <option>Surkhet</option>
                        <option>Syangja</option>
                        <option>Tanahu</option>
                        <option>Taplejung</option>
                        <option>Terhathum</option>
                        <option>Udayapur</option>
                    </select>
                    <span class="help-block col-sm-8">District</span>
                </div>
            </div>
        </div>

        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon">@</span>
                    <input type="text" name="pemTole" value="${user?.userAddress?.pemTole}" class="form-control" placeholder="Tole"/>
                </div>
                <span class="help-block col-sm-8">ex. Abc</span>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-4 col-sm-4 col-md-4">
            <div class="form-group">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
                    <input type="text" id="ward_no2" value="${user?.userAddress?.pemWardNo}" name="pemWardNo" class="form-control" placeholder="Ward No."
                           oninput="validate('ward_no2', event)"/>
                </div>
                <span class="help-block col-sm-8">ex. 1</span>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            By clicking <strong class="label label-primary">Clear</strong>, you will clear the data and made original
        one.
        </div>
    </div>
    <hr class="colorgraph">

    <div class="row">
        <div class="col-xs-4 col-md-4"><input type="submit" value="Clear"
                                              class="btn btn-primary btn-block btn-lg"></div>

        <div class="col-xs-4 col-md-4"><a href="javascript:void(0)"
                                          class="btn btn-warning btn-block btn-lg"
                                          onclick="openCity(event, 'demographics')">Back</a>
        </div>

        <div class="col-xs-4 col-md-4"><a href="javascript:void(0)" class="btn btn-success btn-block btn-lg"
                                          onclick="openCity(event, 'education')">Next</a>
        </div>
    </div>
</div>