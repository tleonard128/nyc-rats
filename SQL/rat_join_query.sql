SELECT rd.community_district,
rd.rat_count,
lu.pct_lu1,
lu.pct_lu2,
lu.pct_lu3,
lu.pct_lu4,
lu.pct_lu5,
lu.pct_lu6,
lu.pct_lu7,
lu.pct_lu8,
lu.pct_lu9,
lu.pct_lu10,
lu.pct_lu11
FROM rats_by_community_board as rd
JOIN land_use_merge_ready as lu ON rd.community_district=lu.cb