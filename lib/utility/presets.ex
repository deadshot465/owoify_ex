defmodule Presets do
  @spec specific_word_mapping_list :: [(Word.t() -> Word.t()), ...]
  def specific_word_mapping_list do
    [
      &Mappings.map_fuc_to_fwuc/1,
      &Mappings.map_mom_to_mwom/1,
      &Mappings.map_time_to_tim/1,
      &Mappings.map_me_to_mwe/1,
      &Mappings.map_n_vowel_to_ny/1,
      &Mappings.map_over_to_owor/1,
      &Mappings.map_ove_to_uv/1,
      &Mappings.map_haha_to_hehe_xd/1,
      &Mappings.map_the_to_teh/1,
      &Mappings.map_you_to_u/1,
      &Mappings.map_read_to_wead/1,
      &Mappings.map_worse_to_wose/1
    ]
  end

  @spec uvu_mapping_list :: [(Word.t() -> Word.t()), ...]
  def uvu_mapping_list do
    [
      &Mappings.map_o_to_owo/1,
      &Mappings.map_ew_to_uwu/1,
      &Mappings.map_hey_to_hay/1,
      &Mappings.map_dead_to_ded/1,
      &Mappings.map_n_vowel_t_to_nd/1
    ]
  end

  @spec uwu_mapping_list :: [(Word.t() -> Word.t()), ...]
  def uwu_mapping_list do
    [
      &Mappings.map_brackets_to_star_trails/1,
      &Mappings.map_period_comma_exclamation_semicolon_to_kaomojis/1,
      &Mappings.map_that_to_dat/1,
      &Mappings.map_th_to_f/1,
      &Mappings.map_le_to_wal/1,
      &Mappings.map_ve_to_we/1,
      &Mappings.map_ry_to_wwy/1,
      &Mappings.map_r_or_l_to_w/1
    ]
  end

  @spec owo_mapping_list :: [(Word.t() -> Word.t()), ...]
  def owo_mapping_list do
    [
      &Mappings.map_ll_to_ww/1,
      &Mappings.map_vowel_or_r_except_o_l_to_wl/1,
      &Mappings.map_old_to_owld/1,
      &Mappings.map_ol_to_owl/1,
      &Mappings.map_l_or_r_o_to_wo/1,
      &Mappings.map_specific_consonants_o_to_letter_and_wo/1,
      &Mappings.map_v_or_w_le_to_wal/1,
      &Mappings.map_fi_to_fwi/1,
      &Mappings.map_ver_to_wer/1,
      &Mappings.map_poi_to_pwoi/1,
      &Mappings.map_specific_consonants_le_to_letter_and_wal/1,
      &Mappings.map_consonant_r_to_consonant_w/1,
      &Mappings.map_ly_to_wy/1,
      &Mappings.map_ple_to_pwe/1,
      &Mappings.map_nr_to_nw/1
    ]
  end
end
