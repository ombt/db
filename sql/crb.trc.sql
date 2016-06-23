-- .output sql/crb.trc.sql.csv

create table
    denorm_data
as
select
    fd.fid,
    fd.ftype,
    fd.date,
    fd.timestamp,
    fd.machine,
    fd.lane,
    fd.stage,
    fd.output,
    fd.mjsid,
    fd.lotname,
    fd.lotnumber,
    fd.serial,
    fd.productid,
    fd.product,
    ln.idnum,
    ln.lotnum,
    ln.lot,
    ln.mcfilename,
    ln.filter,
    ln.autochg,
    ln.basechg,
    ln.lane,
    ln.productionid,
    ln.simproduct,
    ln.dgspcbname,
    ln.dgspcbrev,
    ln.dgspcbside,
    ln.dgsrefpin,
    ln.c,
    ln.datagenmode,
    ln.mounthead,
    ln.vstpath,
    mqt.fid,
    mqt.b,
    mqt.idnum,
    mqt.turn,
    mqt.ms,
    mqt.ts,
    mqt.fadd,
    mqt.fsadd,
    mqt.fblkcode,
    mqt.fblkserial,
    mqt.nhadd,
    mqt.ncadd,
    mqt.nblkcode,
    mqt.nblkserial,
    mqt.reelid,
    mqt.f,
    mqt.rcgx,
    mqt.rcgy,
    mqt.rcga,
    mqt.tcx,
    mqt.tcy,
    mqt.mposirecx,
    mqt.mposirecy,
    mqt.mposireca,
    mqt.mposirecz,
    mqt.thmax,
    mqt.thave,
    mqt.mntcx,
    mqt.mntcy,
    mqt.mntca,
    mqt.tlx,
    mqt.tly,
    mqt.inspectarea,
    mqt.didnum,
    mqt.ds,
    mqt.dispenseid,
    mqt.parts,
    mqt.warpz,
    pd.lotno,
    pd.idnum,
    pd.cadid,
    pd.x,
    pd.y,
    pd.a,
    pd.parts,
    pd.brm,
    pd.turn,
    pd.dturn,
    pd.ts,
    pd.ms,
    pd.ds,
    pd.np,
    pd.dnp,
    pd.pu,
    pd.side,
    pd.dpu,
    pd.head,
    pd.dhead,
    pd.ihead,
    pd.b,
    pd.pg,
    pd.s,
    pd.rid,
    pd.c,
    pd.m,
    pd.mb,
    pd.f,
    pd.pr,
    pd.priseq,
    pd.p,
    pd.pad,
    pd.vw,
    pd.stdpos,
    pd.land,
    pd.depend,
    pd.chkflag,
    pd.exchk,
    pd.grand,
    pd.marea,
    pd.rmset,
    pd.sh,
    pd.scandir1,
    pd.scandir2,
    pd.ohl,
    pd.ohr,
    pd.apcctrl,
    pd.wg,
    pd.skipnumber
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
    pd.lotno = fd.lotnumber
and
    pd.idnum = mqt.idnum
order by
    fd.timestamp,
    fd.machine,
    fd.lane,
    fd.stage
;

-- .output

