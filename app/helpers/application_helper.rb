module ApplicationHelper
  def company_phone
    domainname = request.host
    if domainname.include? 'mskopt'
      return '+7 (495) 287-81-41'
    else
      return '+7 (812) 331-14-60'
    end
  end

  def company_phone1
    domainname = request.host
    if domainname.include? 'mskopt'
      return '+7 (495) 287-81-39'
    else
      return '+7 (921) 740-66-92'
    end
  end

  def company_email
    domainname = request.host
    if domainname.include? 'mskopt'
      return 'sale@msk.alice.ru'
    else
      return 'sale@alice.ru'
    end
  end

  def company_title
    domainname = request.host
    if domainname.include? 'mskopt'
      return 'Линолеум оптом'
    else
      return 'Линолеум оптом'
    end
  end

  def step_option_id
    domainname = request.host
    if domainname.include? 'mskopt'
      return 4
    else
      return 4
    end
  end

  def yandex_counter
    domainname = request.host
    if domainname.include? 'mskopt'
      return '56122603'
    else
      return '55775020'
    end
  end

  def google_counter
    domainname = request.host
    if domainname.include? 'mskopt'
      return 'UA-49310212-3'
    else
      return 'UA-49310212-2'
    end
  end

end
