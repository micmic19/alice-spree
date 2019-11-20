module ApplicationHelper
  def company_phone
    domainname = request.host
    if domainname.include? 'mskopt'
      return '+7 (495) 287-81-39'
    elsif domainname.include? 'kmv'
      return '+7 (8793) 53-73-50'
    else
      return '+7 (812) 331-14-60'
    end
  end

  def company_phone1
    domainname = request.host
    if domainname.include? 'mskopt'
      return '+7 (926) 728-12-68'
    elsif domainname.include? 'kmv'
      return '+7 (928) 338-63-28'
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
    else
      return 'UA-49310212-2'
    end
  end

end