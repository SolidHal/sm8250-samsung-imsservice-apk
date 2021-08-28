.class public Lcom/sec/internal/ims/servicemodules/ss/UtUtils;
.super Ljava/lang/Object;
.source "UtUtils.java"


# static fields
.field public static final DOMAIN_NAME:Ljava/lang/String; = ".3gppnetwork.org"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

.field private static final PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

.field public static final XCAP_DOMAIN_NAME:Ljava/lang/String; = ".pub.3gppnetwork.org"

.field public static final XMLNS_CP:Ljava/lang/String; = "urn:ietf:params:xml:ns:common-policy"

.field public static final XMLNS_SS:Ljava/lang/String; = "http://uri.etsi.org/ngn/params/xml/simservs/xcap"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    .line 34
    const-string v0, "[+]?[#*\\-.()0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildDomain(Lcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p1, "defaultDomain"    # Ljava/lang/String;
    .param p2, "operator"    # Ljava/lang/String;

    .line 429
    const-string v0, "ims.mncXXX.mccXXX.pub.3gppnetwork.org"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    const-string v0, "000"

    .line 431
    .local v0, "mcc":Ljava/lang/String;
    const-string v1, "000"

    .line 432
    .local v1, "mnc":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 433
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 435
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mnc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mncXXX"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mcc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mccXXX"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 445
    .end local v0    # "mcc":Ljava/lang/String;
    .end local v1    # "mnc":Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method public static cleanBarringNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "oldBarringNum"    # Ljava/lang/String;

    .line 715
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    return-object p0

    .line 718
    :cond_0
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    .local v0, "newBarringNum":Ljava/lang/String;
    return-object v0
.end method

.method public static convertCbTypeToBitMask(I)I
    .locals 3
    .param p0, "cbType"    # I

    .line 384
    const/4 v0, 0x0

    .line 385
    .local v0, "result":I
    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    .line 402
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unexpected cbType"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_0
    const/16 v0, 0xa

    .line 400
    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x4

    .line 394
    goto :goto_0

    .line 390
    :cond_2
    const/4 v0, 0x2

    .line 391
    goto :goto_0

    .line 387
    :cond_3
    const/4 v0, 0x1

    .line 388
    goto :goto_0

    .line 396
    :cond_4
    const/16 v0, 0x8

    .line 397
    nop

    .line 404
    :goto_0
    return v0
.end method

.method public static convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1
    .param p0, "ssClass"    # I

    .line 373
    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_0

    .line 379
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object v0

    .line 377
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object v0

    .line 375
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    return-object v0
.end method

.method public static doConvertIpVersion(Ljava/lang/String;)I
    .locals 8
    .param p0, "ver"    # Ljava/lang/String;

    .line 408
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doConvertIpVersion type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "naptr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "srv"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_2
    const-string v0, "ipv4v6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_3
    const-string v0, "ipv6pref"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_4
    const-string v0, "ipv6only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v0, "ipv4pref"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_6
    const-string v0, "ipv4only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 424
    return v1

    .line 422
    :pswitch_0
    return v2

    .line 419
    :pswitch_1
    return v3

    .line 417
    :pswitch_2
    return v4

    .line 415
    :pswitch_3
    return v5

    .line 413
    :pswitch_4
    return v6

    .line 411
    :pswitch_5
    return v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x737decef -> :sswitch_6
        -0x737d6a78 -> :sswitch_5
        -0x7361bded -> :sswitch_4
        -0x73613b76 -> :sswitch_3
        -0x467268db -> :sswitch_2
        0x1bdf7 -> :sswitch_1
        0x63be45b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static doconvertCBType(ZI)I
    .locals 1
    .param p0, "action"    # Z
    .param p1, "type"    # I

    .line 341
    packed-switch p1, :pswitch_data_0

    .line 357
    const/4 v0, 0x0

    return v0

    .line 354
    :pswitch_0
    if-eqz p0, :cond_0

    const/16 v0, 0x77

    goto :goto_0

    :cond_0
    const/16 v0, 0x76

    :goto_0
    return v0

    .line 346
    :pswitch_1
    if-eqz p0, :cond_1

    const/16 v0, 0x69

    goto :goto_1

    :cond_1
    const/16 v0, 0x68

    :goto_1
    return v0

    .line 352
    :pswitch_2
    if-eqz p0, :cond_2

    const/16 v0, 0x67

    goto :goto_2

    :cond_2
    const/16 v0, 0x66

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static doconvertCbCondition(I)Ljava/lang/String;
    .locals 3
    .param p0, "condition"    # I

    .line 319
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertICBtype type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    .line 337
    const-string v0, ""

    return-object v0

    .line 334
    :cond_0
    const-string v0, "cp:identity"

    return-object v0

    .line 332
    :cond_1
    const-string/jumbo v0, "ss:anonymous"

    return-object v0

    .line 330
    :cond_2
    const-string/jumbo v0, "roaming"

    return-object v0

    .line 326
    :cond_3
    const-string v0, "international-exHC"

    return-object v0

    .line 324
    :cond_4
    const-string v0, "international"

    return-object v0
.end method

.method public static doconvertCondition(I)Ljava/lang/String;
    .locals 1
    .param p0, "condition"    # I

    .line 302
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    .line 315
    const-string v0, ""

    return-object v0

    .line 310
    :cond_0
    const-string v0, "not-registered"

    return-object v0

    .line 308
    :cond_1
    const-string v0, "not-reachable"

    return-object v0

    .line 312
    :cond_2
    const-string v0, "no-answer"

    return-object v0

    .line 306
    :cond_3
    const-string v0, "busy"

    return-object v0
.end method

.method public static doconvertMediaTypeToSsClass(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/MEDIA;",
            ">;)I"
        }
    .end annotation

    .line 361
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/servicemodules/ss/MEDIA;>;"
    if-eqz p0, :cond_1

    .line 362
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/16 v0, 0x10

    return v0

    .line 364
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 365
    const/4 v0, 0x1

    return v0

    .line 369
    :cond_1
    const/16 v0, 0xff

    return v0
.end method

.method public static generate3GPPDomain(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 10
    .param p0, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 612
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 613
    return-object v0

    .line 616
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "operator":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 622
    :cond_1
    const/4 v2, 0x3

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 623
    .local v4, "mcc":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 624
    .local v2, "mnc":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 625
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "ims.mnc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%03d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v3, ".mcc"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".3gppnetwork.org"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 628
    .end local v2    # "mnc":Ljava/lang/String;
    .end local v4    # "mcc":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v2

    .line 629
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 630
    return-object v0

    .line 618
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Invalid operator."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-object v0
.end method

.method public static getAcceptEncoding(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .line 694
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 695
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELE2_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 699
    :cond_0
    const-string v1, "*"

    return-object v1

    .line 696
    :cond_1
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method public static getBSFDomain(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 530
    nop

    .line 531
    const-string v0, "bsf_ip"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "defaultBsfip":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 534
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_0

    .line 535
    return-object v0

    .line 537
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "operator":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-nez v3, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 558
    :cond_1
    const-string v3, ""

    .line 560
    .local v3, "retVal":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v8

    const-string v9, ".pub.3gppnetwork.org"

    if-eqz v8, :cond_7

    .line 561
    const-string v4, ""

    .line 562
    .local v4, "impiDomain":Ljava/lang/String;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object v5

    .line 563
    .local v5, "impi":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 564
    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    const-string v7, "NULL IMPI received from SIM :: Returning DEFAULT BSFIP !!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    return-object v0

    .line 567
    :cond_2
    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 568
    .local v6, "domainIndex":I
    if-lez v6, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_3

    goto :goto_1

    .line 571
    :cond_3
    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 572
    const-string v8, ".3gppnetwork.org"

    invoke-virtual {v4, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "bsf."

    if-eqz v10, :cond_5

    .line 576
    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 577
    if-gtz v6, :cond_4

    .line 578
    return-object v0

    .line 580
    :cond_4
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 581
    .local v7, "impiDomainBefore3gpp":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 582
    .end local v7    # "impiDomainBefore3gpp":Ljava/lang/String;
    goto :goto_0

    .line 587
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    .end local v4    # "impiDomain":Ljava/lang/String;
    .end local v5    # "impi":Ljava/lang/String;
    .end local v6    # "domainIndex":I
    :goto_0
    nop

    .line 608
    return-object v3

    .line 569
    .restart local v4    # "impiDomain":Ljava/lang/String;
    .restart local v5    # "impi":Ljava/lang/String;
    .restart local v6    # "domainIndex":I
    :cond_6
    :goto_1
    return-object v0

    .line 590
    .end local v4    # "impiDomain":Ljava/lang/String;
    .end local v5    # "impi":Ljava/lang/String;
    .end local v6    # "domainIndex":I
    :cond_7
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, v4, :cond_8

    goto :goto_2

    .line 594
    :cond_8
    :try_start_0
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "mcc":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 596
    .local v6, "mnc":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v8, "sipUriBuilder":Ljava/lang/StringBuilder;
    const-string v10, "bsf.mnc"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%03d"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v5, v7

    invoke-static {v10, v11, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    const-string v5, ".mcc"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 603
    .end local v4    # "mcc":Ljava/lang/String;
    .end local v6    # "mnc":Ljava/lang/String;
    .end local v8    # "sipUriBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 604
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 605
    return-object v0

    .line 591
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    :goto_2
    return-object v0

    .line 540
    .end local v3    # "retVal":Ljava/lang/String;
    :cond_a
    :goto_3
    const-string v3, "mncXXX.mccXXX.pub.3gppnetwork.org"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 541
    const-string v3, "000"

    .line 542
    .local v3, "mcc":Ljava/lang/String;
    const-string v8, "000"

    .line 543
    .local v8, "mnc":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v4, :cond_c

    .line 544
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 546
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_b

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 548
    :cond_b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v5, :cond_c

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "00"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 552
    :cond_c
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mnc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mncXXX"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mcc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mccXXX"

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .end local v3    # "mcc":Ljava/lang/String;
    .end local v8    # "mnc":Ljava/lang/String;
    :cond_d
    return-object v0
.end method

.method public static getNAFDomain(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 449
    nop

    .line 450
    const-string v0, "auth_proxy_ip"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "defaultDomain":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    .line 453
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v1, :cond_0

    .line 454
    return-object v0

    .line 457
    :cond_0
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 458
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    .line 459
    .local v3, "operator":Ljava/lang/String;
    nop

    .line 460
    const-string v4, "enable_gba"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v4

    .line 462
    .local v4, "enableGBA":I
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 463
    return-object v0

    .line 466
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 467
    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->buildDomain(Lcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 468
    .local v6, "domain":Ljava/lang/String;
    if-eqz v6, :cond_2

    return-object v6

    .line 471
    .end local v6    # "domain":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_8

    .line 472
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object v5

    .line 473
    .local v5, "xcapDomain":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 474
    return-object v0

    .line 477
    :cond_3
    const/16 v6, 0x40

    if-ne v4, v7, :cond_4

    sget-object v8, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v2, v8, :cond_4

    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "naf."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 479
    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xcapDomain :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 480
    :cond_4
    sget-object v8, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v9, "xcap."

    if-ne v2, v8, :cond_6

    .line 481
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    const-string v6, "mnc"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 483
    .local v6, "foundMnc":I
    if-lez v6, :cond_5

    .line 484
    add-int/lit8 v7, v6, 0x6

    .line 485
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 484
    const-string v8, "mnc000"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .end local v6    # "foundMnc":I
    :cond_5
    goto :goto_0

    .line 488
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 491
    :goto_0
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 492
    const-string v6, "3gppnetwork.org"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 493
    const-string/jumbo v7, "pub.3gppnetwork.org"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 495
    :cond_7
    return-object v5

    .line 498
    .end local v5    # "xcapDomain":Ljava/lang/String;
    :cond_8
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x5

    if-ge v6, v8, :cond_9

    goto :goto_2

    .line 502
    :cond_9
    const/4 v6, 0x3

    :try_start_0
    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 503
    .local v8, "mcc":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 504
    .local v6, "mnc":Ljava/lang/String;
    sget-object v9, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v9, :cond_a

    .line 505
    const-string v9, "000"

    move-object v6, v9

    goto :goto_1

    .line 506
    :cond_a
    sget-object v9, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v9, :cond_b

    .line 507
    const-string v9, "460"

    move-object v8, v9

    .line 508
    const-string v9, "011"

    move-object v6, v9

    goto :goto_1

    .line 509
    :cond_b
    sget-object v9, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v9, :cond_c

    .line 510
    const-string v9, "455"

    move-object v8, v9

    .line 511
    const-string v9, "007"

    move-object v6, v9

    .line 514
    :cond_c
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 515
    .local v9, "sipUriBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "xcap.ims.mnc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%03d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v5

    invoke-static {v10, v11, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const-string v5, ".mcc"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    const-string v5, ".pub.3gppnetwork.org"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 521
    .end local v6    # "mnc":Ljava/lang/String;
    .end local v8    # "mcc":Ljava/lang/String;
    .end local v9    # "sipUriBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    .line 522
    .local v5, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 523
    return-object v0

    .line 499
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    :goto_2
    return-object v0
.end method

.method public static getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;

    .line 643
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 644
    return-object v1

    .line 647
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_WHITE_SPACES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 649
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 650
    return-object p0

    .line 652
    :cond_1
    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 653
    .local v0, "imsUri":Lcom/sec/ims/util/ImsUri;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 654
    .local v1, "result":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 655
    const-string v1, ""

    .line 658
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->PATTERN_TEL_NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_4

    .line 659
    const-string v1, ""

    .line 661
    :cond_4
    return-object v1
.end method

.method public static isBsfDisableTls(I)Z
    .locals 6
    .param p0, "phoneId"    # I

    .line 723
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 724
    .local v0, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 725
    return v1

    .line 727
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 728
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v3, 0x1

    new-array v4, v3, [Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    aput-object v5, v4, v1

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 729
    return v3

    .line 731
    :cond_1
    return v1
.end method

.method public static isCallBarringType(I)Z
    .locals 1
    .param p0, "ssType"    # I

    .line 703
    const/16 v0, 0x66

    if-eq p0, v0, :cond_1

    const/16 v0, 0x67

    if-eq p0, v0, :cond_1

    const/16 v0, 0x68

    if-eq p0, v0, :cond_1

    const/16 v0, 0x69

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 705
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static makeInternationNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    .line 666
    move-object v0, p0

    .line 667
    .local v0, "phoneNumber":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 670
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    :goto_0
    return-object v0
.end method

.method public static makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 6
    .param p0, "data"    # Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .param p1, "type"    # I
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 81
    const/16 v0, 0x69

    if-ne p1, v0, :cond_1

    .line 82
    sget-object v0, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_0

    const-string/jumbo v0, "ss:outgoing-communication-barring"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "outgoing-communication-barring"

    goto :goto_0

    .line 83
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_2

    const-string/jumbo v0, "ss:incoming-communication-barring"

    goto :goto_0

    :cond_2
    const-string v0, "incoming-communication-barring"

    :goto_0
    nop

    .line 84
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v1, v0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v2, "active"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 85
    .local v1, "xml":Lcom/sec/internal/constants/ims/XmlElement;
    sget-object v2, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p2, v2, :cond_3

    .line 86
    const-string/jumbo v2, "xmlns:ss"

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 89
    :cond_3
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v3, "cp:ruleset"

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 90
    .local v2, "ruleset":Lcom/sec/internal/constants/ims/XmlElement;
    sget-object v3, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_4

    .line 91
    const-string/jumbo v3, "xmlns:cp"

    const-string/jumbo v4, "urn:ietf:params:xml:ns:common-policy"

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 94
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 95
    .local v4, "rules":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    move-object v5, v4

    check-cast v5, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-static {v5, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    .line 96
    .local v5, "rule":Lcom/sec/internal/constants/ims/XmlElement;
    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 97
    .end local v4    # "rules":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .end local v5    # "rule":Lcom/sec/internal/constants/ims/XmlElement;
    goto :goto_1

    .line 99
    :cond_5
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 101
    return-object v1
.end method

.method public static makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 7
    .param p0, "data"    # Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 43
    sget-object v0, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "ss:communication-diversion"

    goto :goto_0

    :cond_0
    const-string v0, "communication-diversion"

    .line 44
    .local v0, "name":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v1, v0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    const-string v2, "active"

    const-string/jumbo v3, "true"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v1

    .line 45
    .local v1, "xml":Lcom/sec/internal/constants/ims/XmlElement;
    sget-object v2, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_1

    .line 46
    const-string/jumbo v2, "xmlns:ss"

    const-string v3, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 48
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-lez v2, :cond_3

    .line 49
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v3, "NoReplyTimer"

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 50
    .local v2, "noreplytimer":Lcom/sec/internal/constants/ims/XmlElement;
    sget-object v3, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v3, :cond_2

    .line 51
    const-string/jumbo v3, "ss"

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 53
    :cond_2
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 54
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 56
    .end local v2    # "noreplytimer":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_3
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v3, "cp:ruleset"

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "ruleset":Lcom/sec/internal/constants/ims/XmlElement;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->rules:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 58
    .local v4, "rules":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    move-object v5, v4

    check-cast v5, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    const/4 v6, 0x0

    invoke-static {v5, v6, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    .line 59
    .local v5, "rule":Lcom/sec/internal/constants/ims/XmlElement;
    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 60
    .end local v4    # "rules":Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
    .end local v5    # "rule":Lcom/sec/internal/constants/ims/XmlElement;
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 64
    return-object v1
.end method

.method public static makeNoReplyTimerXml(II)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 3
    .param p0, "time"    # I
    .param p1, "phoneId"    # I

    .line 68
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 70
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v2, "NoReplyTimer"

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .local v1, "mainElement":Lcom/sec/internal/constants/ims/XmlElement;
    goto :goto_1

    .line 71
    .end local v1    # "mainElement":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_1
    :goto_0
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v2, "ss:NoReplyTimer"

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 75
    .restart local v1    # "mainElement":Lcom/sec/internal/constants/ims/XmlElement;
    :goto_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 77
    return-object v1
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 11
    .param p0, "rules"    # Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 235
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "cp:rule"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "rule":Lcom/sec/internal/constants/ims/XmlElement;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->ruleId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 238
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v3, "cp:conditions"

    invoke-direct {v1, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 239
    .local v1, "conditions":Lcom/sec/internal/constants/ims/XmlElement;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCbCondition(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "mCondition":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    const/16 v5, 0xa

    const-string/jumbo v6, "ss"

    if-nez v4, :cond_3

    .line 241
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_1

    .line 242
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v7, "cp:identity"

    invoke-direct {v4, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 243
    .local v4, "identity":Lcom/sec/internal/constants/ims/XmlElement;
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 244
    .local v8, "uri":Ljava/lang/String;
    new-instance v9, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v10, "cp:one"

    invoke-direct {v9, v10}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 245
    .local v9, "oneId":Lcom/sec/internal/constants/ims/XmlElement;
    invoke-virtual {v9, v2, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 246
    invoke-virtual {v4, v9}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 247
    .end local v8    # "uri":Ljava/lang/String;
    .end local v9    # "oneId":Lcom/sec/internal/constants/ims/XmlElement;
    goto :goto_0

    .line 248
    :cond_0
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 249
    .end local v4    # "identity":Lcom/sec/internal/constants/ims/XmlElement;
    goto :goto_1

    .line 250
    :cond_1
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "condition":Lcom/sec/internal/constants/ims/XmlElement;
    sget-object v4, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_2

    .line 252
    const-string/jumbo v4, "ss:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "cp:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 253
    invoke-virtual {v2, v6}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 255
    :cond_2
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 259
    .end local v2    # "condition":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    if-eq v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    const/4 v4, 0x6

    if-eq v2, v4, :cond_5

    .line 260
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 261
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 262
    .local v4, "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    invoke-static {v4, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v5

    .line 263
    .local v5, "xmlMedia":Lcom/sec/internal/constants/ims/XmlElement;
    if-eqz v5, :cond_4

    .line 264
    invoke-virtual {v1, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 266
    .end local v4    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v5    # "xmlMedia":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_4
    goto :goto_2

    .line 270
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v2, :cond_7

    .line 271
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v4, "rule-deactivated"

    invoke-direct {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "deactivate":Lcom/sec/internal/constants/ims/XmlElement;
    sget-object v4, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v4, :cond_6

    .line 273
    invoke-virtual {v2, v6}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 275
    :cond_6
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 278
    .end local v2    # "deactivate":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_7
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v4, "cp:actions"

    invoke-direct {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 279
    .local v2, "actions":Lcom/sec/internal/constants/ims/XmlElement;
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v5, "allow"

    invoke-direct {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 280
    .local v4, "allow":Lcom/sec/internal/constants/ims/XmlElement;
    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p1, v5, :cond_8

    sget-object v5, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v5, :cond_9

    .line 281
    :cond_8
    invoke-virtual {v4, v6}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 283
    :cond_9
    const-string v5, "false"

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 285
    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 288
    sget-object v5, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v5, :cond_a

    sget-object v5, Lcom/sec/internal/constants/Mno;->BATELCO_BAHRAIN:Lcom/sec/internal/constants/Mno;

    if-eq p1, v5, :cond_a

    sget-object v5, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-eq p1, v5, :cond_a

    sget-object v5, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-ne p1, v5, :cond_b

    .line 289
    :cond_a
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->actions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;

    .line 290
    .local v6, "elm":Lcom/sec/internal/ims/servicemodules/ss/ActionElm;
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    iget-object v8, v6, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->name:Ljava/lang/String;

    iget-object v9, v6, Lcom/sec/internal/ims/servicemodules/ss/ActionElm;->value:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .local v7, "xmlElm":Lcom/sec/internal/constants/ims/XmlElement;
    invoke-virtual {v2, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 292
    .end local v6    # "elm":Lcom/sec/internal/ims/servicemodules/ss/ActionElm;
    .end local v7    # "xmlElm":Lcom/sec/internal/constants/ims/XmlElement;
    goto :goto_3

    .line 295
    :cond_b
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 296
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 298
    return-object v0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 1
    .param p0, "rules"    # Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .param p1, "support_ss"    # Z
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 129
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    return-object v0
.end method

.method public static makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 10
    .param p0, "rules"    # Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .param p1, "support_ss"    # Z
    .param p2, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p3, "timer"    # I

    .line 155
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "cp:rule"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "rule":Lcom/sec/internal/constants/ims/XmlElement;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->ruleId:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 158
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v2, "cp:conditions"

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "condition":Lcom/sec/internal/constants/ims/XmlElement;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const-string/jumbo v3, "ss"

    if-nez v2, :cond_1

    .line 161
    new-instance v2, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v4, "rule-deactivated"

    invoke-direct {v2, v4}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "deactivate":Lcom/sec/internal/constants/ims/XmlElement;
    if-eqz p1, :cond_0

    .line 163
    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 165
    :cond_0
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 168
    .end local v2    # "deactivate":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCondition(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "mCondition":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 170
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v4, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 171
    .local v4, "condition_xml":Lcom/sec/internal/constants/ims/XmlElement;
    if-eqz p1, :cond_2

    .line 172
    invoke-virtual {v4, v3}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 174
    :cond_2
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 177
    .end local v4    # "condition_xml":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 178
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 179
    .local v5, "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    invoke-static {v5, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v6

    .line 180
    .local v6, "xmlMedia":Lcom/sec/internal/constants/ims/XmlElement;
    if-eqz v6, :cond_4

    .line 181
    invoke-virtual {v1, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 183
    .end local v5    # "m":Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .end local v6    # "xmlMedia":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_4
    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 187
    new-instance v4, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v5, "cp:actions"

    invoke-direct {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 189
    .local v4, "actions":Lcom/sec/internal/constants/ims/XmlElement;
    const/4 v5, 0x0

    .line 190
    .local v5, "forward":Lcom/sec/internal/constants/ims/XmlElement;
    new-instance v6, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v7, "target"

    invoke-direct {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 191
    .local v6, "target":Lcom/sec/internal/constants/ims/XmlElement;
    if-eqz p1, :cond_6

    .line 192
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string/jumbo v8, "ss:forward-to"

    invoke-direct {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 193
    invoke-virtual {v6, v3}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_1

    .line 195
    :cond_6
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v8, "forward-to"

    invoke-direct {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    move-object v5, v7

    .line 197
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 198
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 199
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_2

    .line 200
    :cond_7
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 201
    sget-object v7, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v7, :cond_8

    .line 202
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_9

    .line 203
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    goto :goto_2

    .line 206
    :cond_8
    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 210
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v7, v7, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 211
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 212
    new-instance v8, Lcom/sec/internal/constants/ims/XmlElement;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->id:Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 213
    .local v8, "notify":Lcom/sec/internal/constants/ims/XmlElement;
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/ss/ForwardElm;->status:Z

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 214
    invoke-virtual {v5, v8}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 211
    .end local v8    # "notify":Lcom/sec/internal/constants/ims/XmlElement;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 218
    .end local v7    # "i":I
    :cond_a
    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 220
    if-lez p3, :cond_c

    .line 221
    new-instance v7, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v8, "NoReplyTimer"

    invoke-direct {v7, v8}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 222
    .local v7, "noreplytimer":Lcom/sec/internal/constants/ims/XmlElement;
    if-eqz p1, :cond_b

    .line 223
    invoke-virtual {v7, v3}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 225
    :cond_b
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 226
    invoke-virtual {v4, v7}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 229
    .end local v7    # "noreplytimer":Lcom/sec/internal/constants/ims/XmlElement;
    :cond_c
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 231
    return-object v0
.end method

.method public static makeSingleXml(Ljava/lang/String;IZ)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 5
    .param p0, "root"    # Ljava/lang/String;
    .param p1, "condition"    # I
    .param p2, "support_ss"    # Z

    .line 112
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "mainElement":Lcom/sec/internal/constants/ims/XmlElement;
    new-instance v1, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v2, "default-behaviour"

    invoke-direct {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "nodeElement":Lcom/sec/internal/constants/ims/XmlElement;
    if-eqz p2, :cond_0

    .line 116
    const-string/jumbo v2, "ss"

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 117
    const-string/jumbo v3, "xmlns:ss"

    const-string v4, "http://uri.etsi.org/ngn/params/xml/simservs/xcap"

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 118
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 121
    :cond_0
    if-nez p1, :cond_1

    const-string v2, "false"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "true"

    :goto_0
    const-string v3, "active"

    invoke-virtual {v0, v3, v2}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 122
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const-string/jumbo v2, "presentation-restricted"

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "presentation-not-restricted"

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 123
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addChildElement(Lcom/sec/internal/constants/ims/XmlElement;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 125
    return-object v0
.end method

.method public static makeSingleXml(Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 3
    .param p0, "root"    # Ljava/lang/String;
    .param p1, "active"    # Z

    .line 105
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    invoke-direct {v0, p0}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "mainElement":Lcom/sec/internal/constants/ims/XmlElement;
    if-eqz p1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "active"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/constants/ims/XmlElement;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 108
    return-object v0
.end method

.method public static removeUriPlusPrefix(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 676
    move-object v0, p0

    .line 677
    .local v0, "trimUri":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_0

    .line 678
    const-string v1, "+81"

    const-string v2, "0"

    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    :cond_0
    return-object v0
.end method

.method private static removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;

    .line 685
    move-object v0, p0

    .line 686
    .local v0, "trimUri":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 690
    :cond_0
    return-object v0
.end method

.method private static setMediaElement(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;
    .locals 3
    .param p0, "media"    # Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 133
    new-instance v0, Lcom/sec/internal/constants/ims/XmlElement;

    const-string v1, "media"

    invoke-direct {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;-><init>(Ljava/lang/String;)V

    .line 134
    .local v0, "xmlMedia":Lcom/sec/internal/constants/ims/XmlElement;
    sget-object v1, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_0

    .line 135
    const-string/jumbo v1, "ss"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setNamespace(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 137
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtUtils$1;->$SwitchMap$com$sec$internal$ims$servicemodules$ss$MEDIA:[I

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 142
    :cond_1
    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 143
    goto :goto_0

    .line 139
    :cond_2
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/XmlElement;->setValue(Ljava/lang/String;)Lcom/sec/internal/constants/ims/XmlElement;

    .line 140
    nop

    .line 147
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-eq p0, v1, :cond_3

    .line 148
    return-object v0

    .line 151
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method
