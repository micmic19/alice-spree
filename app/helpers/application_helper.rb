module ApplicationHelper
  def company_phone
    domainname = request.domain
    if domainname.include? 'mskopt.alice.ru'
      return '+7 (495) 287-81-41'
    else
      return '+7 (812) 331-14-60'
    end
  end

  def company_phone1
    domainname = request.domain
    if domainname.include? 'mskopt.alice.ru'
      return '+7 (495) 287-81-39'
    else
      return '+7 (921) 740-66-92'
    end
  end

  def company_email
    domainname = request.domain
    if domainname.include? 'mskopt.alice.ru'
      return 'sale@msk.alice.ru'
    else
      return 'sale@alice.ru'
    end
  end

  def company_title
    domainname = request.domain
    if domainname.include? 'mskopt.alice.ru'
      return 'Линолеум оптом'
    else
      return 'Линолеум оптом'
    end
  end

  def step_option_id
    domainname = request.domain
    if domainname.include? 'mskopt.alice.ru'
      return 4
    else
      return 4
    end
  end
end
