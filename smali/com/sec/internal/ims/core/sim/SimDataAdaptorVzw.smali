.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 203
    const-class v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0
    .param p1, "simManager"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 206
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 207
    return-void
.end method

.method private checkAvailableImpu(Ljava/lang/String;)Z
    .locals 14
    .param p1, "impu"    # Ljava/lang/String;

    .line 213
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkAvailableImpu:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "operator":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/SimManager;->isLabSimCard()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 216
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    const-string v3, "LAB SIM inserted. return true.."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return v2

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/sim/SimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "msisdn":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 222
    const-string v3, "[^+?0-9]+"

    const-string v5, " "

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 224
    .local v3, "impuNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 225
    sget-object v5, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "impuNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", msisdn: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    const/4 v5, 0x0

    .line 233
    .local v5, "mcc":I
    const-string v8, ""

    .line 234
    .local v8, "countryCode":Ljava/lang/String;
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v9

    .line 236
    .local v9, "util":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_0
    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 237
    invoke-static {v5}, Lcom/sec/internal/helper/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    .line 238
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v9, v6, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6

    .line 239
    .local v6, "impuPhoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v9, v1, v8}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    .line 240
    .local v10, "msisdnPhoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    sget-object v11, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "impu: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v9, v6, v10}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v7

    .line 243
    .local v7, "match":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v11, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkAvailableImpu: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    sget-object v11, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NO_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, v11, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    return v2

    .line 245
    .end local v6    # "impuPhoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .end local v7    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    .end local v10    # "msisdnPhoneNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    return v4

    .line 228
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "mcc":I
    .end local v8    # "countryCode":Ljava/lang/String;
    .end local v9    # "util":Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    :cond_3
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SimController : refresh: SIM operator is unknown."

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v4

    .line 251
    .end local v3    # "impuNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return v4
.end method


# virtual methods
.method public getEmergencyImpu(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 256
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getEmergencyImpu:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 261
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    .local v2, "impu":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->checkAvailableImpu(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    return-object v2

    .line 265
    .end local v2    # "impu":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 267
    :cond_2
    return-object v0

    .line 258
    :cond_3
    :goto_1
    return-object v0
.end method

.method public getImpuFromList(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 272
    .local p1, "impus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getImpuFromList:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->getImpuFromList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "impu":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 280
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorVzw;->checkAvailableImpu(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    return-object v1

    .line 284
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 285
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 287
    :cond_2
    return-object v0

    .line 274
    .end local v1    # "impu":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0
.end method
