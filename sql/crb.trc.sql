-- .output sql/crb.trc.sql.csv

create table
    denorm_data
as
select
    fd.fid as 'fd.fid',
    fd.ftype as 'fd.ftype',
    fd.date as 'fd.date',
    fd.timestamp as 'fd.timestamp',
    fd.machine as 'fd.machine',
    fd.lane as 'fd.lane',
    fd.stage as 'fd.stage',
    fd.output as 'fd.output',
    fd.mjsid as 'fd.mjsid',
    fd.lotname as 'fd.lotname',
    fd.lotnumber as 'fd.lotnumber',
    fd.serial as 'fd.serial',
    fd.productid as 'fd.productid',
    fd.product as 'fd.product',
    ln.idnum as 'ln.idnum',
    ln.lotnum as 'ln.lotnum',
    ln.lot as 'ln.lot',
    ln.mcfilename as 'ln.mcfilename',
    ln.filter as 'ln.filter',
    ln.autochg as 'ln.autochg',
    ln.basechg as 'ln.basechg',
    ln.lane as 'ln.lane',
    ln.productionid as 'ln.productionid',
    ln.simproduct as 'ln.simproduct',
    ln.dgspcbname as 'ln.dgspcbname',
    ln.dgspcbrev as 'ln.dgspcbrev',
    ln.dgspcbside as 'ln.dgspcbside',
    ln.dgsrefpin as 'ln.dgsrefpin',
    ln.c as 'ln.c',
    ln.datagenmode as 'ln.datagenmode',
    ln.mounthead as 'ln.mounthead',
    ln.vstpath as 'ln.vstpath',
    mqt.fid as 'mqt.fid',
    mqt.b as 'mqt.b',
    mqt.idnum as 'mqt.idnum',
    mqt.turn as 'mqt.turn',
    mqt.ms as 'mqt.ms',
    mqt.ts as 'mqt.ts',
    mqt.fadd as 'mqt.fadd',
    mqt.fsadd as 'mqt.fsadd',
    mqt.fblkcode as 'mqt.fblkcode',
    mqt.fblkserial as 'mqt.fblkserial',
    mqt.nhadd as 'mqt.nhadd',
    mqt.ncadd as 'mqt.ncadd',
    mqt.nblkcode as 'mqt.nblkcode',
    mqt.nblkserial as 'mqt.nblkserial',
    mqt.reelid as 'mqt.reelid',
    mqt.f as 'mqt.f',
    mqt.rcgx as 'mqt.rcgx',
    mqt.rcgy as 'mqt.rcgy',
    mqt.rcga as 'mqt.rcga',
    mqt.tcx as 'mqt.tcx',
    mqt.tcy as 'mqt.tcy',
    mqt.mposirecx as 'mqt.mposirecx',
    mqt.mposirecy as 'mqt.mposirecy',
    mqt.mposireca as 'mqt.mposireca',
    mqt.mposirecz as 'mqt.mposirecz',
    mqt.thmax as 'mqt.thmax',
    mqt.thave as 'mqt.thave',
    mqt.mntcx as 'mqt.mntcx',
    mqt.mntcy as 'mqt.mntcy',
    mqt.mntca as 'mqt.mntca',
    mqt.tlx as 'mqt.tlx',
    mqt.tly as 'mqt.tly',
    mqt.inspectarea as 'mqt.inspectarea',
    mqt.didnum as 'mqt.didnum',
    mqt.ds as 'mqt.ds',
    mqt.dispenseid as 'mqt.dispenseid',
    mqt.parts as 'mqt.parts',
    mqt.warpz as 'mqt.warpz',
    pd.lotno as 'pd.lotno',
    pd.idnum as 'pd.idnum',
    pd.cadid as 'pd.cadid',
    pd.x as 'pd.x',
    pd.y as 'pd.y',
    pd.a as 'pd.a',
    pd.parts as 'pd.parts',
    pd.brm as 'pd.brm',
    pd.turn as 'pd.turn',
    pd.dturn as 'pd.dturn',
    pd.ts as 'pd.ts',
    pd.ms as 'pd.ms',
    pd.ds as 'pd.ds',
    pd.np as 'pd.np',
    pd.dnp as 'pd.dnp',
    pd.pu as 'pd.pu',
    pd.side as 'pd.side',
    pd.dpu as 'pd.dpu',
    pd.head as 'pd.head',
    pd.dhead as 'pd.dhead',
    pd.ihead as 'pd.ihead',
    pd.b as 'pd.b',
    pd.pg as 'pd.pg',
    pd.s as 'pd.s',
    pd.rid as 'pd.rid',
    pd.c as 'pd.c',
    pd.m as 'pd.m',
    pd.mb as 'pd.mb',
    pd.f as 'pd.f',
    pd.pr as 'pd.pr',
    pd.priseq as 'pd.priseq',
    pd.p as 'pd.p',
    pd.pad as 'pd.pad',
    pd.vw as 'pd.vw',
    pd.stdpos as 'pd.stdpos',
    pd.land as 'pd.land',
    pd.depend as 'pd.depend',
    pd.chkflag as 'pd.chkflag',
    pd.exchk as 'pd.exchk',
    pd.grand as 'pd.grand',
    pd.marea as 'pd.marea',
    pd.rmset as 'pd.rmset',
    pd.sh as 'pd.sh',
    pd.scandir1 as 'pd.scandir1',
    pd.scandir2 as 'pd.scandir2',
    pd.ohl as 'pd.ohl',
    pd.ohr as 'pd.ohr',
    pd.apcctrl as 'pd.apcctrl',
    pd.wg as 'pd.wg',
    pd.skipnumber as 'pd.skipnumber'
from
    fid_data fd
left join
    lotnames ln
on
    ln.lot = fd.lotname
and
    ln.lotnum = fd.lotnumber
join
    mountqualitytrace mqt
on
    mqt.fid = fd.fid
left join
    positiondata pd
on
    pd.lotno = ln.lotnum
and
    pd.idnum = mqt.idnum
order by
    fd.timestamp,
    fd.machine,
    fd.lane,
    fd.stage
;

-- .output

