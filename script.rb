apps = %w{airton_negromonte eric_gow martin_chantal remi_dupont_lemay_api andrew_roy francois_vachon mathieu_h
samuel_asselin charles_hebert gabriel_chevanel maxime_patry samuel_asselin_api codeboxx jonathan_pagani
olivier_denis severine_delpit codeboxx_paul marc_antoine_tanguay raphael_vallee simon_fortier danny_gauthier
marc_olivier_groleau raphael_vallee_api stephane_roy dominic_villemure marc_olivier_groleau_api remi_dupont_lemay}

Dir.chdir('/home/philippe/codeboxx/codeboxx') {
  apps.each do |a|
    p a
    %x[APP=#{a} cap production puma:start]
  end
}