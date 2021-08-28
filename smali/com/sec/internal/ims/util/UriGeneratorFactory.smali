.class public Lcom/sec/internal/ims/util/UriGeneratorFactory;
.super Ljava/lang/Object;
.source "UriGeneratorFactory.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UriGeneratorFactory"

.field static volatile sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;


# instance fields
.field private DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

.field private mContext:Landroid/content/Context;

.field private mPrimaryImpu:[Lcom/sec/ims/util/ImsUri;

.field private mUriGenerators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mContext:Landroid/content/Context;

    .line 49
    const-string/jumbo v1, "sip:default@default"

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    .line 67
    iput-object p1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mContext:Landroid/content/Context;

    .line 69
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    .line 71
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    .line 72
    .local v1, "tm":Lcom/sec/internal/helper/os/ITelephonyManager;
    iget-object v10, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    iget-object v11, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    new-instance v12, Lcom/sec/internal/ims/util/UriGeneratorImpl;

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    .line 73
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v8

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v9

    const-string/jumbo v5, "us"

    const-string v6, "example.com"

    move-object v2, v12

    move-object v3, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/util/UriGeneratorImpl;-><init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;II)V

    .line 72
    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v2

    .line 76
    .local v2, "phoneCount":I
    new-array v3, v2, [Lcom/sec/ims/util/ImsUri;

    iput-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpu:[Lcom/sec/ims/util/ImsUri;

    .line 77
    invoke-static {v3, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method private getDerivedDomainFromImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "mcc"    # Ljava/lang/String;
    .param p2, "mnc"    # Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsiBasedDomain: mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UriGeneratorFactory"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 117
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 115
    const-string v2, "ims.mnc%03d.mcc%03d.3gppnetwork.org"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "domain":Ljava/lang/String;
    return-object v0

    .line 113
    .end local v0    # "domain":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;
    .locals 3

    .line 54
    sget-object v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    if-nez v0, :cond_1

    .line 55
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    const-class v1, Lcom/sec/internal/ims/util/UriGeneratorFactory;

    monitor-enter v1

    .line 57
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    if-nez v2, :cond_0

    .line 58
    new-instance v2, Lcom/sec/internal/ims/util/UriGeneratorFactory;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    .line 60
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 63
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->sUriFactory:Lcom/sec/internal/ims/util/UriGeneratorFactory;

    return-object v0
.end method


# virtual methods
.method public add(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 3
    .param p1, "impu"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "generator"    # Lcom/sec/internal/ims/util/UriGenerator;

    .line 123
    if-nez p1, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/util/UriGenerator;->getPhoneId()I

    move-result v0

    .line 127
    .local v0, "phoneId":I
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpu:[Lcom/sec/ims/util/ImsUri;

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    .line 128
    aput-object p1, v1, v0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public contains(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 144
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public create(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 17
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;

    .line 82
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    .line 83
    .local v11, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v12

    .line 84
    .local v12, "mno":Lcom/sec/internal/constants/Mno;
    const-string v1, ""

    .line 85
    .local v1, "countryCode":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 86
    invoke-virtual {v12}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    move-object v13, v1

    goto :goto_0

    .line 85
    :cond_0
    move-object v13, v1

    .line 89
    .end local v1    # "countryCode":Ljava/lang/String;
    .local v13, "countryCode":Ljava/lang/String;
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v14

    .line 90
    .local v14, "tm":Lcom/sec/internal/helper/os/ITelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v15

    .line 91
    .local v15, "subId":I
    if-eqz v12, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v12, v1, :cond_1

    .line 92
    new-instance v10, Lcom/sec/internal/ims/util/VzwUriGenerator;

    iget-object v2, v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v8

    move-object v1, v10

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v6, v14

    move v7, v15

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/util/VzwUriGenerator;-><init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .local v1, "ug":Lcom/sec/internal/ims/util/UriGenerator;
    goto/16 :goto_1

    .line 93
    .end local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :cond_1
    const-string/jumbo v1, "us"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 94
    new-instance v10, Lcom/sec/internal/ims/util/UriGeneratorUs;

    iget-object v2, v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v8

    move-object v1, v10

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v6, v14

    move v7, v15

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/util/UriGeneratorUs;-><init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .restart local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    goto/16 :goto_1

    .line 95
    .end local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :cond_2
    if-eqz v12, :cond_4

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v12, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->EE:Lcom/sec/internal/constants/Mno;

    if-eq v12, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    if-eq v12, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE_PL:Lcom/sec/internal/constants/Mno;

    if-ne v12, v1, :cond_4

    .line 96
    :cond_3
    new-instance v16, Lcom/sec/internal/ims/util/UriGeneratorDT;

    iget-object v2, v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v5

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMcc()Ljava/lang/String;

    move-result-object v1

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getMnc()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getDerivedDomainFromImsi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v9

    move-object/from16 v1, v16

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v7, v14

    move v8, v15

    move-object v10, v11

    invoke-direct/range {v1 .. v10}, Lcom/sec/internal/ims/util/UriGeneratorDT;-><init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .restart local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    goto/16 :goto_1

    .line 99
    .end local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :cond_4
    if-eqz v12, :cond_5

    const-string v1, "kr"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 100
    new-instance v10, Lcom/sec/internal/ims/util/UriGeneratorKr;

    iget-object v2, v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v8

    move-object v1, v10

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v6, v14

    move v7, v15

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/util/UriGeneratorKr;-><init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .line 101
    .restart local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/util/UriGeneratorKr;

    invoke-virtual {v12}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/util/UriGeneratorKr;->setMnoName(Ljava/lang/String;)V

    goto :goto_1

    .line 102
    .end local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :cond_5
    if-eqz v12, :cond_6

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v12, v1, :cond_6

    .line 103
    new-instance v10, Lcom/sec/internal/ims/util/UriGeneratorRjil;

    iget-object v2, v0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v8

    move-object v1, v10

    move-object/from16 v3, p2

    move-object v4, v13

    move-object v6, v14

    move v7, v15

    move-object v9, v11

    invoke-direct/range {v1 .. v9}, Lcom/sec/internal/ims/util/UriGeneratorRjil;-><init>(Landroid/content/Context;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .restart local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    goto :goto_1

    .line 105
    .end local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :cond_6
    new-instance v9, Lcom/sec/internal/ims/util/UriGeneratorImpl;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v7

    move-object v1, v9

    move-object/from16 v2, p2

    move-object v3, v13

    move-object v5, v14

    move v6, v15

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/util/UriGeneratorImpl;-><init>(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/helper/os/ITelephonyManager;IILcom/sec/ims/settings/ImsProfile;)V

    .line 107
    .restart local v1    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :goto_1
    return-object v1
.end method

.method public get()Lcom/sec/internal/ims/util/UriGenerator;
    .locals 4

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "generator":Lcom/sec/internal/ims/util/UriGenerator;
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    .line 155
    .local v1, "phoneId":I
    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpu:[Lcom/sec/ims/util/ImsUri;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 156
    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    .line 159
    :cond_0
    if-nez v0, :cond_1

    .line 160
    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    .line 162
    :cond_1
    return-object v0
.end method

.method public get(I)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 3
    .param p1, "phoneId"    # I

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "generator":Lcom/sec/internal/ims/util/UriGenerator;
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpu:[Lcom/sec/ims/util/ImsUri;

    aget-object v2, v1, p1

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    aget-object v1, v1, p1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    .line 172
    :cond_0
    if-nez v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    .line 175
    :cond_1
    return-object v0
.end method

.method public get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 3
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 179
    if-nez p1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    return-object v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    .line 183
    .local v0, "generator":Lcom/sec/internal/ims/util/UriGenerator;
    if-nez v0, :cond_1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get: UriGenerator not found for uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". use default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UriGeneratorFactory"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    return-object v1

    .line 187
    :cond_1
    return-object v0
.end method

.method public removeByPhoneId(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mPrimaryImpu:[Lcom/sec/ims/util/ImsUri;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    .line 135
    iget-object v0, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 136
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 137
    .local v2, "key":Lcom/sec/ims/util/ImsUri;
    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->DEFAULT_URI:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v3, v2}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/util/UriGenerator;

    invoke-virtual {v3}, Lcom/sec/internal/ims/util/UriGenerator;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 138
    iget-object v3, p0, Lcom/sec/internal/ims/util/UriGeneratorFactory;->mUriGenerators:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v2    # "key":Lcom/sec/ims/util/ImsUri;
    :cond_0
    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method public updateUriGenerator(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/util/ImsUri$UriType;)V
    .locals 5
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "uriType"    # Lcom/sec/ims/util/ImsUri$UriType;

    .line 191
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 192
    .local v1, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 194
    .local v2, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->contains(Lcom/sec/ims/util/ImsUri;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->create(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    .line 196
    .local v3, "ug":Lcom/sec/internal/ims/util/UriGenerator;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/util/UriGenerator;->extractOwnAreaCode(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/util/UriGenerator;->updateRat(I)V

    goto :goto_1

    .line 199
    .end local v3    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    .line 202
    .restart local v3    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    :goto_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->VOLTE_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v4, p2}, Lcom/sec/internal/ims/util/UriGenerator;->updateNetworkPreferredUriType(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;)V

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 206
    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v4, p2}, Lcom/sec/internal/ims/util/UriGenerator;->updateNetworkPreferredUriType(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri$UriType;)V

    .line 209
    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->add(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator;)V

    .line 210
    .end local v1    # "addr":Lcom/sec/ims/util/NameAddr;
    .end local v2    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v3    # "ug":Lcom/sec/internal/ims/util/UriGenerator;
    goto :goto_0

    .line 211
    :cond_3
    return-void
.end method
