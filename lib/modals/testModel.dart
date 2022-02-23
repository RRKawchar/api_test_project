/// status : "OK"
/// status-code : 200
/// version : "1.0"
/// access : "public"
/// data : {"DZ":{"country":"Algeria","region":"Africa"},"AO":{"country":"Angola","region":"Africa"},"BJ":{"country":"Benin","region":"Africa"},"BW":{"country":"Botswana","region":"Africa"},"BF":{"country":"Burkina Faso","region":"Africa"},"BI":{"country":"Burundi","region":"Africa"},"CV":{"country":"Cabo Verde","region":"Africa"},"CM":{"country":"Cameroon","region":"Africa"},"CF":{"country":"Central African Republic (the)","region":"Africa"},"TD":{"country":"Chad","region":"Africa"},"KM":{"country":"Comoros (the)","region":"Africa"},"CD":{"country":"Congo (the Democratic Republic of the)","region":"Africa"},"CG":{"country":"Congo (the)","region":"Africa"},"CI":{"country":"Côte d'Ivoire","region":"Africa"},"DJ":{"country":"Djibouti","region":"Africa"},"EG":{"country":"Egypt","region":"Africa"},"GQ":{"country":"Equatorial Guinea","region":"Africa"},"ER":{"country":"Eritrea","region":"Africa"},"SZ":{"country":"Eswatini","region":"Africa"},"ET":{"country":"Ethiopia","region":"Africa"},"GA":{"country":"Gabon","region":"Africa"},"GM":{"country":"Gambia (the)","region":"Africa"},"GH":{"country":"Ghana","region":"Africa"},"GN":{"country":"Guinea","region":"Africa"},"GW":{"country":"Guinea-Bissau","region":"Africa"},"KE":{"country":"Kenya","region":"Africa"},"LS":{"country":"Lesotho","region":"Africa"},"LR":{"country":"Liberia","region":"Africa"},"LY":{"country":"Libya","region":"Africa"},"MG":{"country":"Madagascar","region":"Africa"},"MW":{"country":"Malawi","region":"Africa"},"ML":{"country":"Mali","region":"Africa"},"MR":{"country":"Mauritania","region":"Africa"},"MU":{"country":"Mauritius","region":"Africa"},"YT":{"country":"Mayotte","region":"Africa"},"MA":{"country":"Morocco","region":"Africa"},"MZ":{"country":"Mozambique","region":"Africa"},"NA":{"country":"Namibia","region":"Africa"},"NE":{"country":"Niger (the)","region":"Africa"},"NG":{"country":"Nigeria","region":"Africa"},"RE":{"country":"Réunion","region":"Africa"},"RW":{"country":"Rwanda","region":"Africa"},"SH":{"country":"Saint Helena, Ascension and Tristan da Cunha","region":"Africa"},"ST":{"country":"Sao Tome and Principe","region":"Africa"},"SN":{"country":"Senegal","region":"Africa"},"SC":{"country":"Seychelles","region":"Africa"},"SL":{"country":"Sierra Leone","region":"Africa"},"SO":{"country":"Somalia","region":"Africa"},"ZA":{"country":"South Africa","region":"Africa"},"SS":{"country":"South Sudan","region":"Africa"},"SD":{"country":"Sudan (the)","region":"Africa"},"TZ":{"country":"Tanzania, the United Republic of","region":"Africa"},"TG":{"country":"Togo","region":"Africa"},"TN":{"country":"Tunisia","region":"Africa"},"UG":{"country":"Uganda","region":"Africa"},"EH":{"country":"Western Sahara*","region":"Africa"},"ZM":{"country":"Zambia","region":"Africa"},"ZW":{"country":"Zimbabwe","region":"Africa"},"AQ":{"country":"Antarctica","region":"Antarctic"},"BV":{"country":"Bouvet Island","region":"Antarctic"},"TF":{"country":"French Southern Territories (the)","region":"Antarctic"},"HM":{"country":"Heard Island and McDonald Islands","region":"Antarctic"},"GS":{"country":"South Georgia and the South Sandwich Islands","region":"Antarctic"},"AF":{"country":"Afghanistan","region":"Asia"},"AM":{"country":"Armenia","region":"Asia"},"AZ":{"country":"Azerbaijan","region":"Asia"},"BD":{"country":"Bangladesh","region":"Asia"},"BT":{"country":"Bhutan","region":"Asia"},"IO":{"country":"British Indian Ocean Territory (the)","region":"Asia"},"BN":{"country":"Brunei Darussalam","region":"Asia"},"KH":{"country":"Cambodia","region":"Asia"},"CN":{"country":"China","region":"Asia"},"GE":{"country":"Georgia","region":"Asia"},"HK":{"country":"Hong Kong","region":"Asia"},"IN":{"country":"India","region":"Asia"},"ID":{"country":"Indonesia","region":"Asia"},"JP":{"country":"Japan","region":"Asia"},"KZ":{"country":"Kazakhstan","region":"Asia"},"KP":{"country":"Korea (the Democratic People's Republic of)","region":"Asia"},"KR":{"country":"Korea (the Republic of)","region":"Asia"},"KG":{"country":"Kyrgyzstan","region":"Asia"},"LA":{"country":"Lao People's Democratic Republic (the)","region":"Asia"},"MO":{"country":"Macao","region":"Asia"},"MY":{"country":"Malaysia","region":"Asia"},"MV":{"country":"Maldives","region":"Asia"},"MN":{"country":"Mongolia","region":"Asia"},"MM":{"country":"Myanmar","region":"Asia"},"NP":{"country":"Nepal","region":"Asia"},"PK":{"country":"Pakistan","region":"Asia"},"PH":{"country":"Philippines (the)","region":"Asia"},"SG":{"country":"Singapore","region":"Asia"},"LK":{"country":"Sri Lanka","region":"Asia"},"TW":{"country":"Taiwan (Province of China)","region":"Asia"},"TJ":{"country":"Tajikistan","region":"Asia"},"TH":{"country":"Thailand","region":"Asia"},"TL":{"country":"Timor-Leste","region":"Asia"},"TM":{"country":"Turkmenistan","region":"Asia"},"UZ":{"country":"Uzbekistan","region":"Asia"},"VN":{"country":"Viet Nam","region":"Asia"},"BZ":{"country":"Belize","region":"Central America"}}

class TestModel {
  TestModel({
      String? status, 
      int? statuscode, 
      String? version, 
      String? access, 
      Data? data,}){
    _status = status;
    _statuscode = statuscode;
    _version = version;
    _access = access;
    _data = data;
}

  TestModel.fromJson(dynamic json) {
    _status = json['status'];
    _statuscode = json['status-code'];
    _version = json['version'];
    _access = json['access'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  int? _statuscode;
  String? _version;
  String? _access;
  Data? _data;

  String? get status => _status;
  int? get statuscode => _statuscode;
  String? get version => _version;
  String? get access => _access;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['status-code'] = _statuscode;
    map['version'] = _version;
    map['access'] = _access;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// DZ : {"country":"Algeria","region":"Africa"}
/// AO : {"country":"Angola","region":"Africa"}
/// BJ : {"country":"Benin","region":"Africa"}
/// BW : {"country":"Botswana","region":"Africa"}
/// BF : {"country":"Burkina Faso","region":"Africa"}
/// BI : {"country":"Burundi","region":"Africa"}
/// CV : {"country":"Cabo Verde","region":"Africa"}
/// CM : {"country":"Cameroon","region":"Africa"}
/// CF : {"country":"Central African Republic (the)","region":"Africa"}
/// TD : {"country":"Chad","region":"Africa"}
/// KM : {"country":"Comoros (the)","region":"Africa"}
/// CD : {"country":"Congo (the Democratic Republic of the)","region":"Africa"}
/// CG : {"country":"Congo (the)","region":"Africa"}
/// CI : {"country":"Côte d'Ivoire","region":"Africa"}
/// DJ : {"country":"Djibouti","region":"Africa"}
/// EG : {"country":"Egypt","region":"Africa"}
/// GQ : {"country":"Equatorial Guinea","region":"Africa"}
/// ER : {"country":"Eritrea","region":"Africa"}
/// SZ : {"country":"Eswatini","region":"Africa"}
/// ET : {"country":"Ethiopia","region":"Africa"}
/// GA : {"country":"Gabon","region":"Africa"}
/// GM : {"country":"Gambia (the)","region":"Africa"}
/// GH : {"country":"Ghana","region":"Africa"}
/// GN : {"country":"Guinea","region":"Africa"}
/// GW : {"country":"Guinea-Bissau","region":"Africa"}
/// KE : {"country":"Kenya","region":"Africa"}
/// LS : {"country":"Lesotho","region":"Africa"}
/// LR : {"country":"Liberia","region":"Africa"}
/// LY : {"country":"Libya","region":"Africa"}
/// MG : {"country":"Madagascar","region":"Africa"}
/// MW : {"country":"Malawi","region":"Africa"}
/// ML : {"country":"Mali","region":"Africa"}
/// MR : {"country":"Mauritania","region":"Africa"}
/// MU : {"country":"Mauritius","region":"Africa"}
/// YT : {"country":"Mayotte","region":"Africa"}
/// MA : {"country":"Morocco","region":"Africa"}
/// MZ : {"country":"Mozambique","region":"Africa"}
/// NA : {"country":"Namibia","region":"Africa"}
/// NE : {"country":"Niger (the)","region":"Africa"}
/// NG : {"country":"Nigeria","region":"Africa"}
/// RE : {"country":"Réunion","region":"Africa"}
/// RW : {"country":"Rwanda","region":"Africa"}
/// SH : {"country":"Saint Helena, Ascension and Tristan da Cunha","region":"Africa"}
/// ST : {"country":"Sao Tome and Principe","region":"Africa"}
/// SN : {"country":"Senegal","region":"Africa"}
/// SC : {"country":"Seychelles","region":"Africa"}
/// SL : {"country":"Sierra Leone","region":"Africa"}
/// SO : {"country":"Somalia","region":"Africa"}
/// ZA : {"country":"South Africa","region":"Africa"}
/// SS : {"country":"South Sudan","region":"Africa"}
/// SD : {"country":"Sudan (the)","region":"Africa"}
/// TZ : {"country":"Tanzania, the United Republic of","region":"Africa"}
/// TG : {"country":"Togo","region":"Africa"}
/// TN : {"country":"Tunisia","region":"Africa"}
/// UG : {"country":"Uganda","region":"Africa"}
/// EH : {"country":"Western Sahara*","region":"Africa"}
/// ZM : {"country":"Zambia","region":"Africa"}
/// ZW : {"country":"Zimbabwe","region":"Africa"}
/// AQ : {"country":"Antarctica","region":"Antarctic"}
/// BV : {"country":"Bouvet Island","region":"Antarctic"}
/// TF : {"country":"French Southern Territories (the)","region":"Antarctic"}
/// HM : {"country":"Heard Island and McDonald Islands","region":"Antarctic"}
/// GS : {"country":"South Georgia and the South Sandwich Islands","region":"Antarctic"}
/// AF : {"country":"Afghanistan","region":"Asia"}
/// AM : {"country":"Armenia","region":"Asia"}
/// AZ : {"country":"Azerbaijan","region":"Asia"}
/// BD : {"country":"Bangladesh","region":"Asia"}
/// BT : {"country":"Bhutan","region":"Asia"}
/// IO : {"country":"British Indian Ocean Territory (the)","region":"Asia"}
/// BN : {"country":"Brunei Darussalam","region":"Asia"}
/// KH : {"country":"Cambodia","region":"Asia"}
/// CN : {"country":"China","region":"Asia"}
/// GE : {"country":"Georgia","region":"Asia"}
/// HK : {"country":"Hong Kong","region":"Asia"}
/// IN : {"country":"India","region":"Asia"}
/// ID : {"country":"Indonesia","region":"Asia"}
/// JP : {"country":"Japan","region":"Asia"}
/// KZ : {"country":"Kazakhstan","region":"Asia"}
/// KP : {"country":"Korea (the Democratic People's Republic of)","region":"Asia"}
/// KR : {"country":"Korea (the Republic of)","region":"Asia"}
/// KG : {"country":"Kyrgyzstan","region":"Asia"}
/// LA : {"country":"Lao People's Democratic Republic (the)","region":"Asia"}
/// MO : {"country":"Macao","region":"Asia"}
/// MY : {"country":"Malaysia","region":"Asia"}
/// MV : {"country":"Maldives","region":"Asia"}
/// MN : {"country":"Mongolia","region":"Asia"}
/// MM : {"country":"Myanmar","region":"Asia"}
/// NP : {"country":"Nepal","region":"Asia"}
/// PK : {"country":"Pakistan","region":"Asia"}
/// PH : {"country":"Philippines (the)","region":"Asia"}
/// SG : {"country":"Singapore","region":"Asia"}
/// LK : {"country":"Sri Lanka","region":"Asia"}
/// TW : {"country":"Taiwan (Province of China)","region":"Asia"}
/// TJ : {"country":"Tajikistan","region":"Asia"}
/// TH : {"country":"Thailand","region":"Asia"}
/// TL : {"country":"Timor-Leste","region":"Asia"}
/// TM : {"country":"Turkmenistan","region":"Asia"}
/// UZ : {"country":"Uzbekistan","region":"Asia"}
/// VN : {"country":"Viet Nam","region":"Asia"}
/// BZ : {"country":"Belize","region":"Central America"}

class Data {
  Data({
      Dz? dz, 
      Ao? ao, 
      Bj? bj, 
      Bw? bw, 
      Bf? bf, 
      Bi? bi, 
      Cv? cv, 
      Cm? cm, 
      Cf? cf, 
      Td? td, 
      Km? km, 
      Cd? cd, 
      Cg? cg, 
      Ci? ci, 
      Dj? dj, 
      Eg? eg, 
      Gq? gq, 
      Er? er, 
      Sz? sz, 
      Et? et, 
      Ga? ga, 
      Gm? gm, 
      Gh? gh, 
      Gn? gn, 
      Gw? gw, 
      Ke? ke, 
      Ls? ls, 
      Lr? lr, 
      Ly? ly, 
      Mg? mg, 
      Mw? mw, 
      Ml? ml, 
      Mr? mr, 
      Mu? mu, 
      Yt? yt, 
      Ma? ma, 
      Mz? mz, 
      Na? na, 
      Ne? ne, 
      Ng? ng, 
      Re? re, 
      Rw? rw, 
      Sh? sh, 
      St? st, 
      Sn? sn, 
      Sc? sc, 
      Sl? sl, 
      So? so, 
      Za? za, 
      Ss? ss, 
      Sd? sd, 
      Tz? tz, 
      Tg? tg, 
      Tn? tn, 
      Ug? ug, 
      Eh? eh, 
      Zm? zm, 
      Zw? zw, 
      Aq? aq, 
      Bv? bv, 
      Tf? tf, 
      Hm? hm, 
      Gs? gs, 
      Af? af, 
      Am? am, 
      Az? az, 
      Bd? bd, 
      Bt? bt, 
      Io? io, 
      Bn? bn, 
      Kh? kh, 
      Cn? cn, 
      Ge? ge, 
      Hk? hk, 
      In? ip,
      Id? id, 
      Jp? jp, 
      Kz? kz, 
      Kp? kp, 
      Kr? kr, 
      Kg? kg, 
      La? la, 
      Mo? mo, 
      My? my, 
      Mv? mv, 
      Mn? mn, 
      Mm? mm, 
      Np? np, 
      Pk? pk, 
      Ph? ph, 
      Sg? sg, 
      Lk? lk, 
      Tw? tw, 
      Tj? tj, 
      Th? th, 
      Tl? tl, 
      Tm? tm, 
      Uz? uz, 
      Vn? vn, 
      Bz? bz,}){
    _dz = dz;
    _ao = ao;
    _bj = bj;
    _bw = bw;
    _bf = bf;
    _bi = bi;
    _cv = cv;
    _cm = cm;
    _cf = cf;
    _td = td;
    _km = km;
    _cd = cd;
    _cg = cg;
    _ci = ci;
    _dj = dj;
    _eg = eg;
    _gq = gq;
    _er = er;
    _sz = sz;
    _et = et;
    _ga = ga;
    _gm = gm;
    _gh = gh;
    _gn = gn;
    _gw = gw;
    _ke = ke;
    _ls = ls;
    _lr = lr;
    _ly = ly;
    _mg = mg;
    _mw = mw;
    _ml = ml;
    _mr = mr;
    _mu = mu;
    _yt = yt;
    _ma = ma;
    _mz = mz;
    _na = na;
    _ne = ne;
    _ng = ng;
    _re = re;
    _rw = rw;
    _sh = sh;
    _st = st;
    _sn = sn;
    _sc = sc;
    _sl = sl;
    _so = so;
    _za = za;
    _ss = ss;
    _sd = sd;
    _tz = tz;
    _tg = tg;
    _tn = tn;
    _ug = ug;
    _eh = eh;
    _zm = zm;
    _zw = zw;
    _aq = aq;
    _bv = bv;
    _tf = tf;
    _hm = hm;
    _gs = gs;
    _af = af;
    _am = am;
    _az = az;
    _bd = bd;
    _bt = bt;
    _io = io;
    _bn = bn;
    _kh = kh;
    _cn = cn;
    _ge = ge;
    _hk = hk;
    _in = ip;
    _id = id;
    _jp = jp;
    _kz = kz;
    _kp = kp;
    _kr = kr;
    _kg = kg;
    _la = la;
    _mo = mo;
    _my = my;
    _mv = mv;
    _mn = mn;
    _mm = mm;
    _np = np;
    _pk = pk;
    _ph = ph;
    _sg = sg;
    _lk = lk;
    _tw = tw;
    _tj = tj;
    _th = th;
    _tl = tl;
    _tm = tm;
    _uz = uz;
    _vn = vn;
    _bz = bz;
}

  Data.fromJson(dynamic json) {
    _dz = json['DZ'] != null ? Dz.fromJson(json['DZ']) : null;
    _ao = json['AO'] != null ? Ao.fromJson(json['AO']) : null;
    _bj = json['BJ'] != null ? Bj.fromJson(json['BJ']) : null;
    _bw = json['BW'] != null ? Bw.fromJson(json['BW']) : null;
    _bf = json['BF'] != null ? Bf.fromJson(json['BF']) : null;
    _bi = json['BI'] != null ? Bi.fromJson(json['BI']) : null;
    _cv = json['CV'] != null ? Cv.fromJson(json['CV']) : null;
    _cm = json['CM'] != null ? Cm.fromJson(json['CM']) : null;
    _cf = json['CF'] != null ? Cf.fromJson(json['CF']) : null;
    _td = json['TD'] != null ? Td.fromJson(json['TD']) : null;
    _km = json['KM'] != null ? Km.fromJson(json['KM']) : null;
    _cd = json['CD'] != null ? Cd.fromJson(json['CD']) : null;
    _cg = json['CG'] != null ? Cg.fromJson(json['CG']) : null;
    _ci = json['CI'] != null ? Ci.fromJson(json['CI']) : null;
    _dj = json['DJ'] != null ? Dj.fromJson(json['DJ']) : null;
    _eg = json['EG'] != null ? Eg.fromJson(json['EG']) : null;
    _gq = json['GQ'] != null ? Gq.fromJson(json['GQ']) : null;
    _er = json['ER'] != null ? Er.fromJson(json['ER']) : null;
    _sz = json['SZ'] != null ? Sz.fromJson(json['SZ']) : null;
    _et = json['ET'] != null ? Et.fromJson(json['ET']) : null;
    _ga = json['GA'] != null ? Ga.fromJson(json['GA']) : null;
    _gm = json['GM'] != null ? Gm.fromJson(json['GM']) : null;
    _gh = json['GH'] != null ? Gh.fromJson(json['GH']) : null;
    _gn = json['GN'] != null ? Gn.fromJson(json['GN']) : null;
    _gw = json['GW'] != null ? Gw.fromJson(json['GW']) : null;
    _ke = json['KE'] != null ? Ke.fromJson(json['KE']) : null;
    _ls = json['LS'] != null ? Ls.fromJson(json['LS']) : null;
    _lr = json['LR'] != null ? Lr.fromJson(json['LR']) : null;
    _ly = json['LY'] != null ? Ly.fromJson(json['LY']) : null;
    _mg = json['MG'] != null ? Mg.fromJson(json['MG']) : null;
    _mw = json['MW'] != null ? Mw.fromJson(json['MW']) : null;
    _ml = json['ML'] != null ? Ml.fromJson(json['ML']) : null;
    _mr = json['MR'] != null ? Mr.fromJson(json['MR']) : null;
    _mu = json['MU'] != null ? Mu.fromJson(json['MU']) : null;
    _yt = json['YT'] != null ? Yt.fromJson(json['YT']) : null;
    _ma = json['MA'] != null ? Ma.fromJson(json['MA']) : null;
    _mz = json['MZ'] != null ? Mz.fromJson(json['MZ']) : null;
    _na = json['NA'] != null ? Na.fromJson(json['NA']) : null;
    _ne = json['NE'] != null ? Ne.fromJson(json['NE']) : null;
    _ng = json['NG'] != null ? Ng.fromJson(json['NG']) : null;
    _re = json['RE'] != null ? Re.fromJson(json['RE']) : null;
    _rw = json['RW'] != null ? Rw.fromJson(json['RW']) : null;
    _sh = json['SH'] != null ? Sh.fromJson(json['SH']) : null;
    _st = json['ST'] != null ? St.fromJson(json['ST']) : null;
    _sn = json['SN'] != null ? Sn.fromJson(json['SN']) : null;
    _sc = json['SC'] != null ? Sc.fromJson(json['SC']) : null;
    _sl = json['SL'] != null ? Sl.fromJson(json['SL']) : null;
    _so = json['SO'] != null ? So.fromJson(json['SO']) : null;
    _za = json['ZA'] != null ? Za.fromJson(json['ZA']) : null;
    _ss = json['SS'] != null ? Ss.fromJson(json['SS']) : null;
    _sd = json['SD'] != null ? Sd.fromJson(json['SD']) : null;
    _tz = json['TZ'] != null ? Tz.fromJson(json['TZ']) : null;
    _tg = json['TG'] != null ? Tg.fromJson(json['TG']) : null;
    _tn = json['TN'] != null ? Tn.fromJson(json['TN']) : null;
    _ug = json['UG'] != null ? Ug.fromJson(json['UG']) : null;
    _eh = json['EH'] != null ? Eh.fromJson(json['EH']) : null;
    _zm = json['ZM'] != null ? Zm.fromJson(json['ZM']) : null;
    _zw = json['ZW'] != null ? Zw.fromJson(json['ZW']) : null;
    _aq = json['AQ'] != null ? Aq.fromJson(json['AQ']) : null;
    _bv = json['BV'] != null ? Bv.fromJson(json['BV']) : null;
    _tf = json['TF'] != null ? Tf.fromJson(json['TF']) : null;
    _hm = json['HM'] != null ? Hm.fromJson(json['HM']) : null;
    _gs = json['GS'] != null ? Gs.fromJson(json['GS']) : null;
    _af = json['AF'] != null ? Af.fromJson(json['AF']) : null;
    _am = json['AM'] != null ? Am.fromJson(json['AM']) : null;
    _az = json['AZ'] != null ? Az.fromJson(json['AZ']) : null;
    _bd = json['BD'] != null ? Bd.fromJson(json['BD']) : null;
    _bt = json['BT'] != null ? Bt.fromJson(json['BT']) : null;
    _io = json['IO'] != null ? Io.fromJson(json['IO']) : null;
    _bn = json['BN'] != null ? Bn.fromJson(json['BN']) : null;
    _kh = json['KH'] != null ? Kh.fromJson(json['KH']) : null;
    _cn = json['CN'] != null ? Cn.fromJson(json['CN']) : null;
    _ge = json['GE'] != null ? Ge.fromJson(json['GE']) : null;
    _hk = json['HK'] != null ? Hk.fromJson(json['HK']) : null;
    _in = json['IN'] != null ? In.fromJson(json['IN']) : null;
    _id = json['ID'] != null ? Id.fromJson(json['ID']) : null;
    _jp = json['JP'] != null ? Jp.fromJson(json['JP']) : null;
    _kz = json['KZ'] != null ? Kz.fromJson(json['KZ']) : null;
    _kp = json['KP'] != null ? Kp.fromJson(json['KP']) : null;
    _kr = json['KR'] != null ? Kr.fromJson(json['KR']) : null;
    _kg = json['KG'] != null ? Kg.fromJson(json['KG']) : null;
    _la = json['LA'] != null ? La.fromJson(json['LA']) : null;
    _mo = json['MO'] != null ? Mo.fromJson(json['MO']) : null;
    _my = json['MY'] != null ? My.fromJson(json['MY']) : null;
    _mv = json['MV'] != null ? Mv.fromJson(json['MV']) : null;
    _mn = json['MN'] != null ? Mn.fromJson(json['MN']) : null;
    _mm = json['MM'] != null ? Mm.fromJson(json['MM']) : null;
    _np = json['NP'] != null ? Np.fromJson(json['NP']) : null;
    _pk = json['PK'] != null ? Pk.fromJson(json['PK']) : null;
    _ph = json['PH'] != null ? Ph.fromJson(json['PH']) : null;
    _sg = json['SG'] != null ? Sg.fromJson(json['SG']) : null;
    _lk = json['LK'] != null ? Lk.fromJson(json['LK']) : null;
    _tw = json['TW'] != null ? Tw.fromJson(json['TW']) : null;
    _tj = json['TJ'] != null ? Tj.fromJson(json['TJ']) : null;
    _th = json['TH'] != null ? Th.fromJson(json['TH']) : null;
    _tl = json['TL'] != null ? Tl.fromJson(json['TL']) : null;
    _tm = json['TM'] != null ? Tm.fromJson(json['TM']) : null;
    _uz = json['UZ'] != null ? Uz.fromJson(json['UZ']) : null;
    _vn = json['VN'] != null ? Vn.fromJson(json['VN']) : null;
    _bz = json['BZ'] != null ? Bz.fromJson(json['BZ']) : null;
  }
  Dz? _dz;
  Ao? _ao;
  Bj? _bj;
  Bw? _bw;
  Bf? _bf;
  Bi? _bi;
  Cv? _cv;
  Cm? _cm;
  Cf? _cf;
  Td? _td;
  Km? _km;
  Cd? _cd;
  Cg? _cg;
  Ci? _ci;
  Dj? _dj;
  Eg? _eg;
  Gq? _gq;
  Er? _er;
  Sz? _sz;
  Et? _et;
  Ga? _ga;
  Gm? _gm;
  Gh? _gh;
  Gn? _gn;
  Gw? _gw;
  Ke? _ke;
  Ls? _ls;
  Lr? _lr;
  Ly? _ly;
  Mg? _mg;
  Mw? _mw;
  Ml? _ml;
  Mr? _mr;
  Mu? _mu;
  Yt? _yt;
  Ma? _ma;
  Mz? _mz;
  Na? _na;
  Ne? _ne;
  Ng? _ng;
  Re? _re;
  Rw? _rw;
  Sh? _sh;
  St? _st;
  Sn? _sn;
  Sc? _sc;
  Sl? _sl;
  So? _so;
  Za? _za;
  Ss? _ss;
  Sd? _sd;
  Tz? _tz;
  Tg? _tg;
  Tn? _tn;
  Ug? _ug;
  Eh? _eh;
  Zm? _zm;
  Zw? _zw;
  Aq? _aq;
  Bv? _bv;
  Tf? _tf;
  Hm? _hm;
  Gs? _gs;
  Af? _af;
  Am? _am;
  Az? _az;
  Bd? _bd;
  Bt? _bt;
  Io? _io;
  Bn? _bn;
  Kh? _kh;
  Cn? _cn;
  Ge? _ge;
  Hk? _hk;
  In? _in;
  Id? _id;
  Jp? _jp;
  Kz? _kz;
  Kp? _kp;
  Kr? _kr;
  Kg? _kg;
  La? _la;
  Mo? _mo;
  My? _my;
  Mv? _mv;
  Mn? _mn;
  Mm? _mm;
  Np? _np;
  Pk? _pk;
  Ph? _ph;
  Sg? _sg;
  Lk? _lk;
  Tw? _tw;
  Tj? _tj;
  Th? _th;
  Tl? _tl;
  Tm? _tm;
  Uz? _uz;
  Vn? _vn;
  Bz? _bz;

  Dz? get dz => _dz;
  Ao? get ao => _ao;
  Bj? get bj => _bj;
  Bw? get bw => _bw;
  Bf? get bf => _bf;
  Bi? get bi => _bi;
  Cv? get cv => _cv;
  Cm? get cm => _cm;
  Cf? get cf => _cf;
  Td? get td => _td;
  Km? get km => _km;
  Cd? get cd => _cd;
  Cg? get cg => _cg;
  Ci? get ci => _ci;
  Dj? get dj => _dj;
  Eg? get eg => _eg;
  Gq? get gq => _gq;
  Er? get er => _er;
  Sz? get sz => _sz;
  Et? get et => _et;
  Ga? get ga => _ga;
  Gm? get gm => _gm;
  Gh? get gh => _gh;
  Gn? get gn => _gn;
  Gw? get gw => _gw;
  Ke? get ke => _ke;
  Ls? get ls => _ls;
  Lr? get lr => _lr;
  Ly? get ly => _ly;
  Mg? get mg => _mg;
  Mw? get mw => _mw;
  Ml? get ml => _ml;
  Mr? get mr => _mr;
  Mu? get mu => _mu;
  Yt? get yt => _yt;
  Ma? get ma => _ma;
  Mz? get mz => _mz;
  Na? get na => _na;
  Ne? get ne => _ne;
  Ng? get ng => _ng;
  Re? get re => _re;
  Rw? get rw => _rw;
  Sh? get sh => _sh;
  St? get st => _st;
  Sn? get sn => _sn;
  Sc? get sc => _sc;
  Sl? get sl => _sl;
  So? get so => _so;
  Za? get za => _za;
  Ss? get ss => _ss;
  Sd? get sd => _sd;
  Tz? get tz => _tz;
  Tg? get tg => _tg;
  Tn? get tn => _tn;
  Ug? get ug => _ug;
  Eh? get eh => _eh;
  Zm? get zm => _zm;
  Zw? get zw => _zw;
  Aq? get aq => _aq;
  Bv? get bv => _bv;
  Tf? get tf => _tf;
  Hm? get hm => _hm;
  Gs? get gs => _gs;
  Af? get af => _af;
  Am? get am => _am;
  Az? get az => _az;
  Bd? get bd => _bd;
  Bt? get bt => _bt;
  Io? get io => _io;
  Bn? get bn => _bn;
  Kh? get kh => _kh;
  Cn? get cn => _cn;
  Ge? get ge => _ge;
  Hk? get hk => _hk;
  In? get ip => _in;
  Id? get id => _id;
  Jp? get jp => _jp;
  Kz? get kz => _kz;
  Kp? get kp => _kp;
  Kr? get kr => _kr;
  Kg? get kg => _kg;
  La? get la => _la;
  Mo? get mo => _mo;
  My? get my => _my;
  Mv? get mv => _mv;
  Mn? get mn => _mn;
  Mm? get mm => _mm;
  Np? get np => _np;
  Pk? get pk => _pk;
  Ph? get ph => _ph;
  Sg? get sg => _sg;
  Lk? get lk => _lk;
  Tw? get tw => _tw;
  Tj? get tj => _tj;
  Th? get th => _th;
  Tl? get tl => _tl;
  Tm? get tm => _tm;
  Uz? get uz => _uz;
  Vn? get vn => _vn;
  Bz? get bz => _bz;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_dz != null) {
      map['DZ'] = _dz?.toJson();
    }
    if (_ao != null) {
      map['AO'] = _ao?.toJson();
    }
    if (_bj != null) {
      map['BJ'] = _bj?.toJson();
    }
    if (_bw != null) {
      map['BW'] = _bw?.toJson();
    }
    if (_bf != null) {
      map['BF'] = _bf?.toJson();
    }
    if (_bi != null) {
      map['BI'] = _bi?.toJson();
    }
    if (_cv != null) {
      map['CV'] = _cv?.toJson();
    }
    if (_cm != null) {
      map['CM'] = _cm?.toJson();
    }
    if (_cf != null) {
      map['CF'] = _cf?.toJson();
    }
    if (_td != null) {
      map['TD'] = _td?.toJson();
    }
    if (_km != null) {
      map['KM'] = _km?.toJson();
    }
    if (_cd != null) {
      map['CD'] = _cd?.toJson();
    }
    if (_cg != null) {
      map['CG'] = _cg?.toJson();
    }
    if (_ci != null) {
      map['CI'] = _ci?.toJson();
    }
    if (_dj != null) {
      map['DJ'] = _dj?.toJson();
    }
    if (_eg != null) {
      map['EG'] = _eg?.toJson();
    }
    if (_gq != null) {
      map['GQ'] = _gq?.toJson();
    }
    if (_er != null) {
      map['ER'] = _er?.toJson();
    }
    if (_sz != null) {
      map['SZ'] = _sz?.toJson();
    }
    if (_et != null) {
      map['ET'] = _et?.toJson();
    }
    if (_ga != null) {
      map['GA'] = _ga?.toJson();
    }
    if (_gm != null) {
      map['GM'] = _gm?.toJson();
    }
    if (_gh != null) {
      map['GH'] = _gh?.toJson();
    }
    if (_gn != null) {
      map['GN'] = _gn?.toJson();
    }
    if (_gw != null) {
      map['GW'] = _gw?.toJson();
    }
    if (_ke != null) {
      map['KE'] = _ke?.toJson();
    }
    if (_ls != null) {
      map['LS'] = _ls?.toJson();
    }
    if (_lr != null) {
      map['LR'] = _lr?.toJson();
    }
    if (_ly != null) {
      map['LY'] = _ly?.toJson();
    }
    if (_mg != null) {
      map['MG'] = _mg?.toJson();
    }
    if (_mw != null) {
      map['MW'] = _mw?.toJson();
    }
    if (_ml != null) {
      map['ML'] = _ml?.toJson();
    }
    if (_mr != null) {
      map['MR'] = _mr?.toJson();
    }
    if (_mu != null) {
      map['MU'] = _mu?.toJson();
    }
    if (_yt != null) {
      map['YT'] = _yt?.toJson();
    }
    if (_ma != null) {
      map['MA'] = _ma?.toJson();
    }
    if (_mz != null) {
      map['MZ'] = _mz?.toJson();
    }
    if (_na != null) {
      map['NA'] = _na?.toJson();
    }
    if (_ne != null) {
      map['NE'] = _ne?.toJson();
    }
    if (_ng != null) {
      map['NG'] = _ng?.toJson();
    }
    if (_re != null) {
      map['RE'] = _re?.toJson();
    }
    if (_rw != null) {
      map['RW'] = _rw?.toJson();
    }
    if (_sh != null) {
      map['SH'] = _sh?.toJson();
    }
    if (_st != null) {
      map['ST'] = _st?.toJson();
    }
    if (_sn != null) {
      map['SN'] = _sn?.toJson();
    }
    if (_sc != null) {
      map['SC'] = _sc?.toJson();
    }
    if (_sl != null) {
      map['SL'] = _sl?.toJson();
    }
    if (_so != null) {
      map['SO'] = _so?.toJson();
    }
    if (_za != null) {
      map['ZA'] = _za?.toJson();
    }
    if (_ss != null) {
      map['SS'] = _ss?.toJson();
    }
    if (_sd != null) {
      map['SD'] = _sd?.toJson();
    }
    if (_tz != null) {
      map['TZ'] = _tz?.toJson();
    }
    if (_tg != null) {
      map['TG'] = _tg?.toJson();
    }
    if (_tn != null) {
      map['TN'] = _tn?.toJson();
    }
    if (_ug != null) {
      map['UG'] = _ug?.toJson();
    }
    if (_eh != null) {
      map['EH'] = _eh?.toJson();
    }
    if (_zm != null) {
      map['ZM'] = _zm?.toJson();
    }
    if (_zw != null) {
      map['ZW'] = _zw?.toJson();
    }
    if (_aq != null) {
      map['AQ'] = _aq?.toJson();
    }
    if (_bv != null) {
      map['BV'] = _bv?.toJson();
    }
    if (_tf != null) {
      map['TF'] = _tf?.toJson();
    }
    if (_hm != null) {
      map['HM'] = _hm?.toJson();
    }
    if (_gs != null) {
      map['GS'] = _gs?.toJson();
    }
    if (_af != null) {
      map['AF'] = _af?.toJson();
    }
    if (_am != null) {
      map['AM'] = _am?.toJson();
    }
    if (_az != null) {
      map['AZ'] = _az?.toJson();
    }
    if (_bd != null) {
      map['BD'] = _bd?.toJson();
    }
    if (_bt != null) {
      map['BT'] = _bt?.toJson();
    }
    if (_io != null) {
      map['IO'] = _io?.toJson();
    }
    if (_bn != null) {
      map['BN'] = _bn?.toJson();
    }
    if (_kh != null) {
      map['KH'] = _kh?.toJson();
    }
    if (_cn != null) {
      map['CN'] = _cn?.toJson();
    }
    if (_ge != null) {
      map['GE'] = _ge?.toJson();
    }
    if (_hk != null) {
      map['HK'] = _hk?.toJson();
    }
    if (_in != null) {
      map['IN'] = _in?.toJson();
    }
    if (_id != null) {
      map['ID'] = _id?.toJson();
    }
    if (_jp != null) {
      map['JP'] = _jp?.toJson();
    }
    if (_kz != null) {
      map['KZ'] = _kz?.toJson();
    }
    if (_kp != null) {
      map['KP'] = _kp?.toJson();
    }
    if (_kr != null) {
      map['KR'] = _kr?.toJson();
    }
    if (_kg != null) {
      map['KG'] = _kg?.toJson();
    }
    if (_la != null) {
      map['LA'] = _la?.toJson();
    }
    if (_mo != null) {
      map['MO'] = _mo?.toJson();
    }
    if (_my != null) {
      map['MY'] = _my?.toJson();
    }
    if (_mv != null) {
      map['MV'] = _mv?.toJson();
    }
    if (_mn != null) {
      map['MN'] = _mn?.toJson();
    }
    if (_mm != null) {
      map['MM'] = _mm?.toJson();
    }
    if (_np != null) {
      map['NP'] = _np?.toJson();
    }
    if (_pk != null) {
      map['PK'] = _pk?.toJson();
    }
    if (_ph != null) {
      map['PH'] = _ph?.toJson();
    }
    if (_sg != null) {
      map['SG'] = _sg?.toJson();
    }
    if (_lk != null) {
      map['LK'] = _lk?.toJson();
    }
    if (_tw != null) {
      map['TW'] = _tw?.toJson();
    }
    if (_tj != null) {
      map['TJ'] = _tj?.toJson();
    }
    if (_th != null) {
      map['TH'] = _th?.toJson();
    }
    if (_tl != null) {
      map['TL'] = _tl?.toJson();
    }
    if (_tm != null) {
      map['TM'] = _tm?.toJson();
    }
    if (_uz != null) {
      map['UZ'] = _uz?.toJson();
    }
    if (_vn != null) {
      map['VN'] = _vn?.toJson();
    }
    if (_bz != null) {
      map['BZ'] = _bz?.toJson();
    }
    return map;
  }

}

/// country : "Belize"
/// region : "Central America"

class Bz {
  Bz({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bz.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Viet Nam"
/// region : "Asia"

class Vn {
  Vn({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Vn.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Uzbekistan"
/// region : "Asia"

class Uz {
  Uz({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Uz.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Turkmenistan"
/// region : "Asia"

class Tm {
  Tm({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Tm.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Timor-Leste"
/// region : "Asia"

class Tl {
  Tl({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Tl.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Thailand"
/// region : "Asia"

class Th {
  Th({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Th.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Tajikistan"
/// region : "Asia"

class Tj {
  Tj({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Tj.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Taiwan (Province of China)"
/// region : "Asia"

class Tw {
  Tw({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Tw.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Sri Lanka"
/// region : "Asia"

class Lk {
  Lk({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Lk.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Singapore"
/// region : "Asia"

class Sg {
  Sg({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Sg.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Philippines (the)"
/// region : "Asia"

class Ph {
  Ph({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ph.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Pakistan"
/// region : "Asia"

class Pk {
  Pk({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Pk.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Nepal"
/// region : "Asia"

class Np {
  Np({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Np.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Myanmar"
/// region : "Asia"

class Mm {
  Mm({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mm.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Mongolia"
/// region : "Asia"

class Mn {
  Mn({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mn.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Maldives"
/// region : "Asia"

class Mv {
  Mv({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mv.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Malaysia"
/// region : "Asia"

class My {
  My({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  My.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Macao"
/// region : "Asia"

class Mo {
  Mo({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mo.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Lao People's Democratic Republic (the)"
/// region : "Asia"

class La {
  La({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  La.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Kyrgyzstan"
/// region : "Asia"

class Kg {
  Kg({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Kg.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Korea (the Republic of)"
/// region : "Asia"

class Kr {
  Kr({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Kr.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Korea (the Democratic People's Republic of)"
/// region : "Asia"

class Kp {
  Kp({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Kp.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Kazakhstan"
/// region : "Asia"

class Kz {
  Kz({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Kz.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Japan"
/// region : "Asia"

class Jp {
  Jp({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Jp.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Indonesia"
/// region : "Asia"

class Id {
  Id({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Id.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "India"
/// region : "Asia"

class In {
  In({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  In.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Hong Kong"
/// region : "Asia"

class Hk {
  Hk({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Hk.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Georgia"
/// region : "Asia"

class Ge {
  Ge({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ge.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "China"
/// region : "Asia"

class Cn {
  Cn({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Cn.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Cambodia"
/// region : "Asia"

class Kh {
  Kh({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Kh.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Brunei Darussalam"
/// region : "Asia"

class Bn {
  Bn({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bn.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "British Indian Ocean Territory (the)"
/// region : "Asia"

class Io {
  Io({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Io.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Bhutan"
/// region : "Asia"

class Bt {
  Bt({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bt.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Bangladesh"
/// region : "Asia"

class Bd {
  Bd({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bd.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Azerbaijan"
/// region : "Asia"

class Az {
  Az({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Az.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Armenia"
/// region : "Asia"

class Am {
  Am({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Am.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Afghanistan"
/// region : "Asia"

class Af {
  Af({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Af.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "South Georgia and the South Sandwich Islands"
/// region : "Antarctic"

class Gs {
  Gs({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Gs.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Heard Island and McDonald Islands"
/// region : "Antarctic"

class Hm {
  Hm({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Hm.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "French Southern Territories (the)"
/// region : "Antarctic"

class Tf {
  Tf({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Tf.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Bouvet Island"
/// region : "Antarctic"

class Bv {
  Bv({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bv.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Antarctica"
/// region : "Antarctic"

class Aq {
  Aq({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Aq.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Zimbabwe"
/// region : "Africa"

class Zw {
  Zw({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Zw.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Zambia"
/// region : "Africa"

class Zm {
  Zm({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Zm.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Western Sahara*"
/// region : "Africa"

class Eh {
  Eh({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Eh.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Uganda"
/// region : "Africa"

class Ug {
  Ug({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ug.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Tunisia"
/// region : "Africa"

class Tn {
  Tn({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Tn.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Togo"
/// region : "Africa"

class Tg {
  Tg({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Tg.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Tanzania, the United Republic of"
/// region : "Africa"

class Tz {
  Tz({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Tz.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Sudan (the)"
/// region : "Africa"

class Sd {
  Sd({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Sd.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "South Sudan"
/// region : "Africa"

class Ss {
  Ss({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ss.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "South Africa"
/// region : "Africa"

class Za {
  Za({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Za.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Somalia"
/// region : "Africa"

class So {
  So({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  So.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Sierra Leone"
/// region : "Africa"

class Sl {
  Sl({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Sl.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Seychelles"
/// region : "Africa"

class Sc {
  Sc({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Sc.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Senegal"
/// region : "Africa"

class Sn {
  Sn({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Sn.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Sao Tome and Principe"
/// region : "Africa"

class St {
  St({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  St.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Saint Helena, Ascension and Tristan da Cunha"
/// region : "Africa"

class Sh {
  Sh({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Sh.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Rwanda"
/// region : "Africa"

class Rw {
  Rw({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Rw.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Réunion"
/// region : "Africa"

class Re {
  Re({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Re.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Nigeria"
/// region : "Africa"

class Ng {
  Ng({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ng.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Niger (the)"
/// region : "Africa"

class Ne {
  Ne({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ne.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Namibia"
/// region : "Africa"

class Na {
  Na({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Na.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Mozambique"
/// region : "Africa"

class Mz {
  Mz({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mz.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Morocco"
/// region : "Africa"

class Ma {
  Ma({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ma.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Mayotte"
/// region : "Africa"

class Yt {
  Yt({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Yt.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Mauritius"
/// region : "Africa"

class Mu {
  Mu({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mu.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Mauritania"
/// region : "Africa"

class Mr {
  Mr({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mr.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Mali"
/// region : "Africa"

class Ml {
  Ml({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ml.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Malawi"
/// region : "Africa"

class Mw {
  Mw({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mw.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Madagascar"
/// region : "Africa"

class Mg {
  Mg({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Mg.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Libya"
/// region : "Africa"

class Ly {
  Ly({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ly.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Liberia"
/// region : "Africa"

class Lr {
  Lr({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Lr.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Lesotho"
/// region : "Africa"

class Ls {
  Ls({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ls.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Kenya"
/// region : "Africa"

class Ke {
  Ke({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ke.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Guinea-Bissau"
/// region : "Africa"

class Gw {
  Gw({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Gw.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Guinea"
/// region : "Africa"

class Gn {
  Gn({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Gn.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Ghana"
/// region : "Africa"

class Gh {
  Gh({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Gh.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Gambia (the)"
/// region : "Africa"

class Gm {
  Gm({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Gm.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Gabon"
/// region : "Africa"

class Ga {
  Ga({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ga.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Ethiopia"
/// region : "Africa"

class Et {
  Et({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Et.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Eswatini"
/// region : "Africa"

class Sz {
  Sz({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Sz.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Eritrea"
/// region : "Africa"

class Er {
  Er({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Er.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Equatorial Guinea"
/// region : "Africa"

class Gq {
  Gq({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Gq.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Egypt"
/// region : "Africa"

class Eg {
  Eg({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Eg.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Djibouti"
/// region : "Africa"

class Dj {
  Dj({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Dj.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Côte d'Ivoire"
/// region : "Africa"

class Ci {
  Ci({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ci.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Congo (the)"
/// region : "Africa"

class Cg {
  Cg({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Cg.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Congo (the Democratic Republic of the)"
/// region : "Africa"

class Cd {
  Cd({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Cd.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Comoros (the)"
/// region : "Africa"

class Km {
  Km({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Km.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Chad"
/// region : "Africa"

class Td {
  Td({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Td.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Central African Republic (the)"
/// region : "Africa"

class Cf {
  Cf({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Cf.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Cameroon"
/// region : "Africa"

class Cm {
  Cm({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Cm.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Cabo Verde"
/// region : "Africa"

class Cv {
  Cv({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Cv.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Burundi"
/// region : "Africa"

class Bi {
  Bi({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bi.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Burkina Faso"
/// region : "Africa"

class Bf {
  Bf({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bf.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Botswana"
/// region : "Africa"

class Bw {
  Bw({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bw.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Benin"
/// region : "Africa"

class Bj {
  Bj({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Bj.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Angola"
/// region : "Africa"

class Ao {
  Ao({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Ao.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}

/// country : "Algeria"
/// region : "Africa"

class Dz {
  Dz({
      String? country, 
      String? region,}){
    _country = country;
    _region = region;
}

  Dz.fromJson(dynamic json) {
    _country = json['country'];
    _region = json['region'];
  }
  String? _country;
  String? _region;

  String? get country => _country;
  String? get region => _region;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = _country;
    map['region'] = _region;
    return map;
  }

}