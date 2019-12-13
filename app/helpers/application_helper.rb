module ApplicationHelper
  def company_phone
    domainname = request.host
    if domainname.include? 'mskopt'
      return '+7 (495) 287-81-39'
    elsif domainname.include? 'kmv'
      return '+7 (8793) 53-73-50'
    elsif domainname.include? 'samara'
      return '+7 (846) 977-74-48'
    elsif domainname.include? 'nskopt'
      return '+7 (383) 363-06-33'
    else
      return '+7 (812) 331-14-60'
    end
  end

  def company_phone1
    domainname = request.host
    if domainname.include? 'mskopt'
      return '+7 (495) 287-81-40'
    elsif domainname.include? 'kmv'
      return '+7 (928) 338-63-28'
    elsif domainname.include? 'samara'
      return '+7 (846) 977-74-49'
    elsif domainname.include? 'nskopt'
      return '+7 (383) 363-06-22'
    else
      return '+7 (921) 740-66-92'
    end
  end

  def company_email
    domainname = request.host
    if domainname.include? 'mskopt'
      return 'sale@msk.alice.ru'
    elsif domainname.include? 'kmv'
      return 'sale@kmv.alice.ru'
    elsif domainname.include? 'samara'
      return 'sale@samara.alice.ru'
    elsif domainname.include? 'nskopt'
      return 'sale@nsk.alice.ru'
    else
      return 'sale@alice.ru'
    end
  end

  def company_title
    domainname = request.host
    if domainname.include? 'mskopt'
      return 'Линолеум оптом'
    elsif domainname.include? 'kmv'
      return 'Линолеум оптом в г. Лермонтов и Пятигорск'
    elsif domainname.include? 'samara'
      return 'Линолеум оптом в Самаре'
    elsif domainname.include? 'nskopt'
      return 'Линолеум оптом в Новосибирске'
    else
      return 'Линолеум оптом'
    end
  end

  def step_option_id
    domainname = request.host
    if domainname.include? 'mskopt'
      return 2
    elsif domainname.include? 'kmv'
      return 2
    elsif domainname.include? 'samara'
      return 2
    elsif domainname.include? 'nskopt'
      return 2
    else
      return 4
    end
  end

  def yandex_counter
    domainname = request.host
    if domainname.include? 'mskopt'
      return '56122603'
    elsif domainname.include? 'kmv'
      return '56317528'
    elsif domainname.include? 'samara'
      return '56540977'
    elsif domainname.include? 'nskopt'
      return '56609323'
    else
      return '55775020'
    end
  end

  def google_counter
    domainname = request.host
    if domainname.include? 'mskopt'
      if request.scheme.include? 'https'
        return 'UA-49310212-3'
      else
        return 'UA-49310212-6'
      end
    elsif domainname.include? 'kmv'
      if request.scheme.include? 'https'
        return 'UA-49310212-4'
      else
        return 'UA-49310212-5'
      end
    elsif domainname.include? 'samara'
      return 'UA-49310212-7'
    elsif domainname.include? 'nskopt'
      return 'UA-49310212-8'
    else
      return 'UA-49310212-2'
    end
  end

  def min_price_amount(taxon)
    #if taxon.products.active.any?
    if Spree::Product.in_taxon(taxon).active.any?
      return 'от ' + Spree::Product.in_taxon(taxon).sort_by(&:price).first.display_amount.to_s
    else
      return ''
    end
  end
end