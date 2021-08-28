.class Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;
.super Ljava/lang/Object;
.source "StrategyUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 9
    .param p0, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p1, "phoneId"    # I

    .line 15
    const-string v0, "US"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 16
    return v1

    .line 19
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "msdn":Ljava/lang/String;
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    .line 25
    .local v3, "phoneUtil":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v3, v2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 26
    .local v4, "phonenumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v3, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isPossibleNumberWithReason(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    move-result-object v5

    .line 28
    .local v5, "result":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->IS_POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-eq v5, v6, :cond_3

    .line 29
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCapabilityValidUri: msdn "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;->TOO_LONG:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;

    if-ne v5, v6, :cond_2

    .line 31
    if-eqz v2, :cond_1

    const-string v6, "+1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xc

    if-ge v6, v7, :cond_3

    .line 32
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "isCapabilityValidUri: Impossible too long phone number"

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    return v1

    .line 36
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "isCapabilityValidUri: Impossible phone number"

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    return v1

    .line 40
    :cond_3
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCode()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 41
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v6

    .line 45
    .end local v5    # "result":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult;
    .local v4, "number":Ljava/lang/String;
    nop

    .line 48
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_7

    .line 49
    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "areaCode":Ljava/lang/String;
    const-string v6, "900"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x38

    const/4 v8, 0x1

    if-ne v6, v7, :cond_4

    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_4

    goto :goto_1

    .line 54
    .end local v5    # "areaCode":Ljava/lang/String;
    :cond_4
    nop

    .line 60
    :try_start_1
    invoke-virtual {v3, v2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v5

    .line 62
    .local v5, "countryCode":I
    if-ne v5, v8, :cond_5

    invoke-static {v2, v0}, Lcom/sec/internal/helper/UriUtil;->isShortCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isCapabilityValidUri: ShortCode. invalid request. msdn "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    return v1

    .line 68
    .end local v5    # "countryCode":I
    :cond_5
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/NumberParseException;->printStackTrace()V

    .line 69
    .end local v0    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    :goto_0
    return v8

    .line 51
    .local v5, "areaCode":Ljava/lang/String;
    :cond_6
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->LOG_TAG:Ljava/lang/String;

    const-string v6, "isCapabilityValidUri: 900 8YY contact. invalid request"

    invoke-static {v0, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    return v1

    .line 55
    .end local v5    # "areaCode":Ljava/lang/String;
    :cond_7
    return v1

    .line 42
    .end local v4    # "number":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 43
    .restart local v0    # "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not a valid number. NumberParseException was thrown: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    return v1
.end method
