defmodule Mappings do
  @o_to_owo Regex.compile!("o")
  @ew_to_uwu Regex.compile!("ew")
  @hey_to_hay Regex.compile!("([Hh])ey")
  @dead_to_ded_upper Regex.compile!("Dead")
  @dead_to_ded_lower Regex.compile!("dead")
  @n_vowel_t_to_nd Regex.compile!("n[aeiou]*t")
  @read_to_wead_upper Regex.compile!("Read")
  @read_to_wead_lower Regex.compile!("read")
  @brackets_to_startrails_fore Regex.compile!("[({<]")
  @brackets_to_startrails_rear Regex.compile!("[)}>]")
  @period_comma_exclamation_semicolon_to_kaomojis_first Regex.compile!("[.,](?![0-9])")
  @period_comma_exclamation_semicolon_to_kaomojis_second Regex.compile!("[!;]+")
  @that_to_dat_upper Regex.compile!("That")
  @that_to_dat_lower Regex.compile!("that")
  @th_to_f_upper Regex.compile!("TH(?!E)")
  @th_to_f_lower Regex.compile!("[Tt]h(?![Ee])")
  @le_to_wal Regex.compile!("le$")
  @ve_to_we_upper Regex.compile!("Ve")
  @ve_to_we_lower Regex.compile!("ve")
  @ry_to_wwy Regex.compile!("ry")
  @rorl_to_w_upper Regex.compile!("(?:R|L)")
  @rorl_to_w_lower Regex.compile!("(?:r|l)")
  @ll_to_ww Regex.compile!("ll")
  @vowel_or_r_except_o_l_to_wl_upper Regex.compile!("[AEIUR]([lL])$")
  @vowel_or_r_except_o_l_to_wl_lower Regex.compile!("[aeiur]l$")
  @old_to_owld_upper Regex.compile!("OLD")
  @old_to_owld_lower Regex.compile!("([Oo])ld")
  @ol_to_owl_upper Regex.compile!("OL")
  @ol_to_owl_lower Regex.compile!("([Oo])l")
  @lorr_o_to_wo_upper Regex.compile!("[LR]([oO])")
  @lorr_o_to_wo_lower Regex.compile!("[lr]o")
  @specific_consonants_o_to_letter_and_wo_upper Regex.compile!("([BCDFGHJKMNPQSTXYZ])([oO])")
  @specific_consonants_o_to_letter_and_wo_lower Regex.compile!("([bcdfghjkmnpqstxyz])o")
  @vorw_le_to_wal Regex.compile!("[vw]le")
  @fi_to_fwi_upper Regex.compile!("FI")
  @fi_to_fwi_lower Regex.compile!("([Ff])i")
  @ver_to_wer Regex.compile!("([Vv])er")
  @poi_to_pwoi Regex.compile!("([Pp])oi")
  @specific_consonants_le_to_letter_and_wal Regex.compile!("([DdFfGgHhJjPpQqRrSsTtXxYyZz])le$")
  @consonant_r_to_consonant_w Regex.compile!("([BbCcDdFfGgKkPpQqSsTtWwXxZz])r")
  @ly_to_wy_upper Regex.compile!("Ly")
  @ly_to_wy_lower Regex.compile!("ly")
  @ple_to_pwe Regex.compile!("([Pp])le")
  @nr_to_nw_upper Regex.compile!("NR")
  @nr_to_nw_lower Regex.compile!("nr")
  @fuc_to_fwuc Regex.compile!("([Ff])uc")
  @mom_to_mwom Regex.compile!("([Mm])om")
  @me_to_mwe Regex.compile!("([Mm])e")
  @n_vowel_to_ny_first Regex.compile!("n([aeiou])")
  @n_vowel_to_ny_second Regex.compile!("N([aeiou])")
  @n_vowel_to_ny_third Regex.compile!("N([AEIOU])")
  @ove_to_uv_upper Regex.compile!("OVE")
  @ove_to_uv_lower Regex.compile!("ove")
  @haha_to_hehe_xd Regex.compile!("\\b(ha|hah|heh|hehe)+\\b")
  @the_to_teh Regex.compile!("\\b([Tt])he\\b")
  @you_to_u_upper Regex.compile!("\\bYou\\b")
  @you_to_u_lower Regex.compile!("\\byou\\b")
  @time_to_tim Regex.compile!("\\b([Tt])ime\\b")
  @over_to_owor Regex.compile!("([Oo])ver")
  @worse_to_wose Regex.compile!("([Ww])orse")
  @faces [
    "(・`ω´・)",
    ";;w;;",
    "owo",
    "UwU",
    ">w<",
    "^w^",
    "(* ^ ω ^)",
    "(⌒ω⌒)",
    "ヽ(*・ω・)ﾉ",
    "(o´∀`o)",
    "(o･ω･o)",
    "＼(＾▽＾)／",
    "(*^ω^)",
    "(◕‿◕✿)",
    "(◕ᴥ◕)",
    "ʕ•ᴥ•ʔ",
    "ʕ￫ᴥ￩ʔ",
    "(*^.^*)",
    "(｡♥‿♥｡)",
    "OwO",
    "uwu",
    "uvu",
    "UvU",
    "(*￣з￣)",
    "(つ✧ω✧)つ",
    "(/ =ω=)/",
    "(╯°□°）╯︵ ┻━┻",
    "┬─┬ ノ( ゜-゜ノ)",
    "¯\_(ツ)_/¯"
  ]

  @spec map_o_to_owo(Word.t()) :: Word.t()
  def map_o_to_owo(input) do
    replacement =
      if Enum.random(0..1) > 0 do
        "owo"
      else
        "o"
      end

    Word.replace(input, @o_to_owo, replacement)
  end

  @spec map_ew_to_uwu(Word.t()) :: Word.t()
  def map_ew_to_uwu(input) do
    Word.replace(input, @ew_to_uwu, "uwu")
  end

  @spec map_hey_to_hay(Word.t()) :: Word.t()
  def map_hey_to_hay(input) do
    Word.replace(input, @hey_to_hay, "\\1ay")
  end

  @spec map_dead_to_ded(Word.t()) :: Word.t()
  def map_dead_to_ded(input) do
    Word.replace(input, @dead_to_ded_upper, "Ded")
    |> Word.replace(@dead_to_ded_lower, "ded")
  end

  @spec map_n_vowel_t_to_nd(Word.t()) :: Word.t()
  def map_n_vowel_t_to_nd(input) do
    Word.replace(input, @n_vowel_t_to_nd, "nd")
  end

  @spec map_read_to_wead(Word.t()) :: Word.t()
  def map_read_to_wead(input) do
    Word.replace(input, @read_to_wead_upper, "Wead")
    |> Word.replace(@read_to_wead_lower, "wead")
  end

  @spec map_brackets_to_star_trails(Word.t()) :: Word.t()
  def map_brackets_to_star_trails(input) do
    Word.replace(input, @brackets_to_startrails_fore, "｡･:*:･ﾟ★,｡･:*:･ﾟ☆")
    |> Word.replace(@brackets_to_startrails_rear, "☆ﾟ･:*:･｡,★ﾟ･:*:･｡")
  end

  @spec map_period_comma_exclamation_semicolon_to_kaomojis(Word.t()) :: Word.t()
  def map_period_comma_exclamation_semicolon_to_kaomojis(input) do
    Word.replace_with_func_single(
      input,
      @period_comma_exclamation_semicolon_to_kaomojis_first,
      fn ->
        Enum.random(@faces)
      end
    )
    |> Word.replace_with_func_single(@period_comma_exclamation_semicolon_to_kaomojis_second, fn ->
      Enum.random(@faces)
    end)
  end

  @spec map_that_to_dat(Word.t()) :: Word.t()
  def map_that_to_dat(input) do
    Word.replace(input, @that_to_dat_lower, "dat")
    |> Word.replace(@that_to_dat_upper, "Dat")
  end

  @spec map_th_to_f(Word.t()) :: Word.t()
  def map_th_to_f(input) do
    Word.replace(input, @th_to_f_lower, "f")
    |> Word.replace(@th_to_f_upper, "F")
  end

  @spec map_le_to_wal(Word.t()) :: Word.t()
  def map_le_to_wal(input) do
    Word.replace(input, @le_to_wal, "wal")
  end

  @spec map_ve_to_we(Word.t()) :: Word.t()
  def map_ve_to_we(input) do
    Word.replace(input, @ve_to_we_lower, "we")
    |> Word.replace(@ve_to_we_upper, "We")
  end

  @spec map_ry_to_wwy(Word.t()) :: Word.t()
  def map_ry_to_wwy(input) do
    Word.replace(input, @ry_to_wwy, "wwy")
  end

  @spec map_r_or_l_to_w(Word.t()) :: Word.t()
  def map_r_or_l_to_w(input) do
    Word.replace(input, @rorl_to_w_lower, "w")
    |> Word.replace(@rorl_to_w_upper, "W")
  end

  @spec map_ll_to_ww(Word.t()) :: Word.t()
  def map_ll_to_ww(input) do
    Word.replace(input, @ll_to_ww, "ww")
  end

  @spec map_vowel_or_r_except_o_l_to_wl(Word.t()) :: Word.t()
  def map_vowel_or_r_except_o_l_to_wl(input) do
    Word.replace(input, @vowel_or_r_except_o_l_to_wl_lower, "wl")
    |> Word.replace(@vowel_or_r_except_o_l_to_wl_upper, "W\\1")
  end

  @spec map_old_to_owld(Word.t()) :: Word.t()
  def map_old_to_owld(input) do
    Word.replace(input, @old_to_owld_lower, "\\1wld")
    |> Word.replace(@old_to_owld_upper, "OWLD")
  end

  @spec map_ol_to_owl(Word.t()) :: Word.t()
  def map_ol_to_owl(input) do
    Word.replace(input, @ol_to_owl_lower, "\\1wl")
    |> Word.replace(@ol_to_owl_upper, "OWL")
  end

  @spec map_l_or_r_o_to_wo(Word.t()) :: Word.t()
  def map_l_or_r_o_to_wo(input) do
    Word.replace(input, @lorr_o_to_wo_lower, "wo")
    |> Word.replace(@lorr_o_to_wo_upper, "W\\1")
  end

  @spec map_specific_consonants_o_to_letter_and_wo(Word.t()) :: Word.t()
  def map_specific_consonants_o_to_letter_and_wo(input) do
    Word.replace(input, @specific_consonants_o_to_letter_and_wo_lower, "\\1wo")
    |> Word.replace_with_func_multiple(@specific_consonants_o_to_letter_and_wo_upper, fn s1, s2 ->
      msg = s1

      msg =
        if String.upcase(s2) == s2 do
          msg <> "W"
        else
          msg <> "w"
        end

      msg <> s2
    end)
  end

  @spec map_v_or_w_le_to_wal(Word.t()) :: Word.t()
  def map_v_or_w_le_to_wal(input) do
    Word.replace(input, @vorw_le_to_wal, "wal")
  end

  @spec map_fi_to_fwi(Word.t()) :: Word.t()
  def map_fi_to_fwi(input) do
    Word.replace(input, @fi_to_fwi_lower, "\\1wi")
    |> Word.replace(@fi_to_fwi_upper, "FWI")
  end

  @spec map_ver_to_wer(Word.t()) :: Word.t()
  def map_ver_to_wer(input) do
    Word.replace(input, @ver_to_wer, "wer")
  end

  @spec map_poi_to_pwoi(Word.t()) :: Word.t()
  def map_poi_to_pwoi(input) do
    Word.replace(input, @poi_to_pwoi, "\\1owi")
  end

  @spec map_specific_consonants_le_to_letter_and_wal(Word.t()) :: Word.t()
  def map_specific_consonants_le_to_letter_and_wal(input) do
    Word.replace(input, @specific_consonants_le_to_letter_and_wal, "\\1wal")
  end

  @spec map_consonant_r_to_consonant_w(Word.t()) :: Word.t()
  def map_consonant_r_to_consonant_w(input) do
    Word.replace(input, @consonant_r_to_consonant_w, "\\1w")
  end

  @spec map_ly_to_wy(Word.t()) :: Word.t()
  def map_ly_to_wy(input) do
    Word.replace(input, @ly_to_wy_lower, "wy")
    |> Word.replace(@ly_to_wy_upper, "Wy")
  end

  @spec map_ple_to_pwe(Word.t()) :: Word.t()
  def map_ple_to_pwe(input) do
    Word.replace(input, @ple_to_pwe, "\\1we")
  end

  @spec map_nr_to_nw(Word.t()) :: Word.t()
  def map_nr_to_nw(input) do
    Word.replace(input, @nr_to_nw_lower, "nw")
    |> Word.replace(@nr_to_nw_upper, "NW")
  end

  @spec map_fuc_to_fwuc(Word.t()) :: Word.t()
  def map_fuc_to_fwuc(input) do
    Word.replace(input, @fuc_to_fwuc, "\\1wuc")
  end

  @spec map_mom_to_mwom(Word.t()) :: Word.t()
  def map_mom_to_mwom(input) do
    Word.replace(input, @mom_to_mwom, "\\1wom")
  end

  @spec map_me_to_mwe(Word.t()) :: Word.t()
  def map_me_to_mwe(input) do
    Word.replace(input, @me_to_mwe, "\\1we")
  end

  @spec map_n_vowel_to_ny(Word.t()) :: Word.t()
  def map_n_vowel_to_ny(input) do
    Word.replace(input, @n_vowel_to_ny_first, "ny\\1")
    |> Word.replace(@n_vowel_to_ny_second, "Ny\\1")
    |> Word.replace(@n_vowel_to_ny_third, "NY\\1")
  end

  @spec map_ove_to_uv(Word.t()) :: Word.t()
  def map_ove_to_uv(input) do
    Word.replace(input, @ove_to_uv_lower, "uv")
    |> Word.replace(@ove_to_uv_upper, "UV")
  end

  @spec map_haha_to_hehe_xd(Word.t()) :: Word.t()
  def map_haha_to_hehe_xd(input) do
    Word.replace(input, @haha_to_hehe_xd, "hehe xD")
  end

  @spec map_the_to_teh(Word.t()) :: Word.t()
  def map_the_to_teh(input) do
    Word.replace(input, @the_to_teh, "\\1eh")
  end

  @spec map_you_to_u(Word.t()) :: Word.t()
  def map_you_to_u(input) do
    Word.replace(input, @you_to_u_lower, "U")
    |> Word.replace(@you_to_u_upper, "u")
  end

  @spec map_time_to_tim(Word.t()) :: Word.t()
  def map_time_to_tim(input) do
    Word.replace(input, @time_to_tim, "\\1im")
  end

  @spec map_over_to_owor(Word.t()) :: Word.t()
  def map_over_to_owor(input) do
    Word.replace(input, @over_to_owor, "\\1wor")
  end

  @spec map_worse_to_wose(Word.t()) :: Word.t()
  def map_worse_to_wose(input) do
    Word.replace(input, @worse_to_wose, "\\1ose")
  end
end
