.output sql/crb.trc.sql.csv

-- create table
    -- denorm_mqt
-- as
select
    fd.fid as 'fd_fid',
    fd.ftype as 'fd_ftype',
    fd.date as 'fd_date',
    fd.timestamp as 'fd_timestamp',
    fd.machine as 'fd_machine',
    fd.lane as 'fd_lane',
    fd.stage as 'fd_stage',
    fd.output as 'fd_output',
    fd.mjsid as 'fd_mjsid',
    fd.lotname as 'fd_lotname',
    fd.lotnumber as 'fd_lotnumber',
    fd.serial as 'fd_serial',
    fd.productid as 'fd_productid',
    fd.product as 'fd_product',
    ln.idnum as 'ln_idnum',
    ln.lotnum as 'ln_lotnum',
    ln.lot as 'ln_lot',
    ln.mcfilename as 'ln_mcfilename',
    ln.filter as 'ln_filter',
    ln.autochg as 'ln_autochg',
    ln.basechg as 'ln_basechg',
    ln.lane as 'ln_lane',
    ln.productionid as 'ln_productionid',
    ln.simproduct as 'ln_simproduct',
    ln.dgspcbname as 'ln_dgspcbname',
    ln.dgspcbrev as 'ln_dgspcbrev',
    ln.dgspcbside as 'ln_dgspcbside',
    ln.dgsrefpin as 'ln_dgsrefpin',
    ln.c as 'ln_c',
    ln.datagenmode as 'ln_datagenmode',
    ln.mounthead as 'ln_mounthead',
    ln.vstpath as 'ln_vstpath',
    mqt.fid as 'mqt_fid',
    mqt.b as 'mqt_b',
    mqt.idnum as 'mqt_idnum',
    mqt.turn as 'mqt_turn',
    mqt.ms as 'mqt_ms',
    mqt.ts as 'mqt_ts',
    mqt.fadd as 'mqt_fadd',
    mqt.fsadd as 'mqt_fsadd',
    mqt.fblkcode as 'mqt_fblkcode',
    mqt.fblkserial as 'mqt_fblkserial',
    mqt.nhadd as 'mqt_nhadd',
    mqt.ncadd as 'mqt_ncadd',
    mqt.nblkcode as 'mqt_nblkcode',
    mqt.nblkserial as 'mqt_nblkserial',
    mqt.reelid as 'mqt_reelid',
    mqt.f as 'mqt_f',
    mqt.rcgx as 'mqt_rcgx',
    mqt.rcgy as 'mqt_rcgy',
    mqt.rcga as 'mqt_rcga',
    mqt.tcx as 'mqt_tcx',
    mqt.tcy as 'mqt_tcy',
    mqt.mposirecx as 'mqt_mposirecx',
    mqt.mposirecy as 'mqt_mposirecy',
    mqt.mposireca as 'mqt_mposireca',
    mqt.mposirecz as 'mqt_mposirecz',
    mqt.thmax as 'mqt_thmax',
    mqt.thave as 'mqt_thave',
    mqt.mntcx as 'mqt_mntcx',
    mqt.mntcy as 'mqt_mntcy',
    mqt.mntca as 'mqt_mntca',
    mqt.tlx as 'mqt_tlx',
    mqt.tly as 'mqt_tly',
    mqt.inspectarea as 'mqt_inspectarea',
    mqt.didnum as 'mqt_didnum',
    mqt.ds as 'mqt_ds',
    mqt.dispenseid as 'mqt_dispenseid',
    mqt.parts as 'mqt_parts',
    mqt.warpz as 'mqt_warpz',
    pd.lotno as 'pd_lotno',
    pd.idnum as 'pd_idnum',
    pd.cadid as 'pd_cadid',
    pd.x as 'pd_x',
    pd.y as 'pd_y',
    pd.a as 'pd_a',
    pd.parts as 'pd_parts',
    pd.brm as 'pd_brm',
    pd.turn as 'pd_turn',
    pd.dturn as 'pd_dturn',
    pd.ts as 'pd_ts',
    pd.ms as 'pd_ms',
    pd.ds as 'pd_ds',
    pd.np as 'pd_np',
    pd.dnp as 'pd_dnp',
    pd.pu as 'pd_pu',
    pd.side as 'pd_side',
    pd.dpu as 'pd_dpu',
    pd.head as 'pd_head',
    pd.dhead as 'pd_dhead',
    pd.ihead as 'pd_ihead',
    pd.b as 'pd_b',
    pd.pg as 'pd_pg',
    pd.s as 'pd_s',
    pd.rid as 'pd_rid',
    pd.c as 'pd_c',
    pd.m as 'pd_m',
    pd.mb as 'pd_mb',
    pd.f as 'pd_f',
    pd.pr as 'pd_pr',
    pd.priseq as 'pd_priseq',
    pd.p as 'pd_p',
    pd.pad as 'pd_pad',
    pd.vw as 'pd_vw',
    pd.stdpos as 'pd_stdpos',
    pd.land as 'pd_land',
    pd.depend as 'pd_depend',
    pd.chkflag as 'pd_chkflag',
    pd.exchk as 'pd_exchk',
    pd.grand as 'pd_grand',
    pd.marea as 'pd_marea',
    pd.rmset as 'pd_rmset',
    pd.sh as 'pd_sh',
    pd.scandir1 as 'pd_scandir1',
    pd.scandir2 as 'pd_scandir2',
    pd.ohl as 'pd_ohl',
    pd.ohr as 'pd_ohr',
    pd.apcctrl as 'pd_apcctrl',
    pd.wg as 'pd_wg',
    pd.skipnumber as 'pd_skipnumber'
from
    fid_data fd
left join
    lotnames ln
on
    ln_lot = fd_lotname
and
    ln_lotnum = fd_lotnumber
join
    mountqualitytrace mqt
on
    mqt_fid = fd_fid
left join
    positiondata pd
on
    pd_lotno = ln_lotnum
and
    pd_idnum = mqt_idnum
order by
    fd_timestamp,
    fd_machine,
    fd_lane,
    fd_stage
;

.output

