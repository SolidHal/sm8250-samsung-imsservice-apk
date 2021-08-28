.class public Lcom/sec/internal/ims/settings/DmProfileLoader;
.super Ljava/lang/Object;
.source "DmProfileLoader.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DmProfileLoader"

.field protected static mIsKorOp:Z

.field protected static mLboPcscfAddrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mLboPcscfPort:I

.field protected static mSmsOverIms:Z

.field protected static mValueList:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    .line 34
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 37
    sput-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFromDmStorage(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "base"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 44
    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "./3GPP_IMS/LBO_P-CSCF_Address"

    .line 45
    .local v2, "lboPcscfPrefix":Ljava/lang/String;
    const-string v3, "Address"

    .line 46
    .local v3, "lboPcscfPostfix":Ljava/lang/String;
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    .line 47
    const/4 v4, -0x1

    sput v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 48
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v5

    sput-boolean v5, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mIsKorOp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DmProfileLoader"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v5, "omadm/*"

    invoke-static {v0, v5, v1}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v5

    .line 54
    .local v5, "dmDatas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, ""

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 55
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 56
    .local v10, "path":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 57
    .local v11, "value":Ljava/lang/String;
    const-string v12, "omadm/"

    invoke-virtual {v10, v12, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "uriPath":Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setValueWithUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-eqz v9, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    invoke-virtual {v9, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v9, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 62
    const/16 v12, 0x5b

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_1

    const/16 v13, 0x5d

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    if-ltz v14, :cond_1

    .line 63
    const-string v14, "]:"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-lez v15, :cond_0

    .line 64
    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 65
    .local v14, "portIndex":I
    if-ltz v14, :cond_0

    .line 66
    add-int/lit8 v15, v14, 0x2

    invoke-virtual {v11, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    sput v15, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 69
    .end local v14    # "portIndex":I
    :cond_0
    sget-object v14, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    .line 70
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 69
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_1
    move-object v12, v11

    .line 73
    .local v12, "address":Ljava/lang/String;
    const/16 v13, 0x3a

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 74
    .local v13, "portIndex":I
    if-ltz v13, :cond_2

    .line 75
    add-int/lit8 v14, v13, 0x1

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    sput v14, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 76
    const/4 v14, 0x0

    invoke-virtual {v11, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 78
    :cond_2
    sget-object v14, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v12    # "address":Ljava/lang/String;
    .end local v13    # "portIndex":I
    :goto_1
    sget v12, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    if-ne v12, v4, :cond_3

    .line 82
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v12

    sput v12, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 85
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "uriPath":Ljava/lang/String;
    .end local v10    # "path":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_3
    goto/16 :goto_0

    .line 87
    :cond_4
    sget-object v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 88
    sget-object v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result v4

    sput v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    .line 92
    :cond_5
    sget-boolean v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v4, :cond_6

    .line 93
    const-string/jumbo v4, "sms_over_ip_network_indication"

    invoke-static {v0, v4, v9, v1}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    sput-boolean v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSmsOverIms: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v7, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 96
    :cond_6
    invoke-static {v0, v1}, Lcom/sec/ims/settings/NvConfiguration;->getSmsIpNetworkIndi(Landroid/content/Context;I)Z

    move-result v4

    sput-boolean v4, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    .line 99
    :goto_2
    new-instance v4, Lcom/sec/ims/settings/ImsProfile;

    move-object/from16 v6, p1

    invoke-direct {v4, v6}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    .line 100
    .local v4, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {v4}, Lcom/sec/internal/ims/settings/DmProfileLoader;->updateDbInfoToProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 102
    return-object v4
.end method

.method private static getIntValue(Ljava/lang/String;)I
    .locals 4
    .param p0, "index"    # Ljava/lang/String;

    .line 217
    const/4 v0, -0x1

    .line 218
    .local v0, "ret":I
    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v1, :cond_0

    .line 219
    const v0, -0x186a0

    .line 222
    :cond_0
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no Value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DmProfileLoader"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public static getProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p2, "phoneId"    # I

    .line 40
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getFromDmStorage(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    return-object v0
.end method

.method private static getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "index"    # Ljava/lang/String;

    .line 230
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-virtual {v0, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static getUriIndex(Ljava/lang/String;)I
    .locals 5
    .param p0, "uri"    # Ljava/lang/String;

    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    .line 236
    .local v2, "dmFieldInfo":Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    invoke-virtual {v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "./3GPP_IMS/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-virtual {v2}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getIndex()I

    move-result v1

    return v1

    .line 244
    .end local v2    # "dmFieldInfo":Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;
    :cond_1
    goto :goto_0

    .line 245
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private static setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V
    .locals 1
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 261
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v0, :cond_0

    .line 262
    const v0, -0x186a0

    if-eq p2, v0, :cond_1

    .line 263
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 266
    :cond_0
    if-lez p2, :cond_1

    .line 267
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    :cond_1
    :goto_0
    return-void
.end method

.method private static setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 273
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p0, p1, p2}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    return-void
.end method

.method public static setValueWithUri(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 249
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getUriIndex(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, "fieldIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 255
    return-void

    .line 257
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mValueList:Landroid/content/ContentValues;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    return-void

    .line 250
    .end local v0    # "fieldIndex":I
    :cond_2
    :goto_0
    return-void
.end method

.method private static updateDbInfoToProfile(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 6
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 106
    const-string v0, "DmProfileLoader"

    const-string/jumbo v1, "updateDbInfoToProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v0, "12"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer1(I)V

    .line 110
    :cond_0
    const-string v0, "13"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    .line 111
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer2(I)V

    .line 113
    :cond_1
    const-string v0, "14"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    .line 114
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimer4(I)V

    .line 116
    :cond_2
    const-string v0, "15"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3

    .line 117
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerA(I)V

    .line 119
    :cond_3
    const-string v0, "16"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_4

    .line 120
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerB(I)V

    .line 122
    :cond_4
    const-string v0, "17"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_5

    .line 123
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerC(I)V

    .line 125
    :cond_5
    const-string v0, "18"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6

    .line 126
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerD(I)V

    .line 128
    :cond_6
    const-string v0, "19"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_7

    .line 129
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerE(I)V

    .line 131
    :cond_7
    const-string v0, "20"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_8

    .line 132
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerF(I)V

    .line 134
    :cond_8
    const-string v0, "21"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 135
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerG(I)V

    .line 137
    :cond_9
    const-string v0, "22"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    .line 138
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerH(I)V

    .line 140
    :cond_a
    const-string v0, "23"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    .line 141
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerI(I)V

    .line 143
    :cond_b
    const-string v0, "24"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    .line 144
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerJ(I)V

    .line 146
    :cond_c
    const-string v0, "25"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_d

    .line 147
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setTimerK(I)V

    .line 150
    :cond_d
    const-string v0, "66"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrnboa_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 151
    const-string v0, "67"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrnbbe_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 152
    const-string v0, "64"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "amrwboa_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 153
    nop

    .line 154
    const-string v0, "65"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 153
    const-string v1, "amrwbbe_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 155
    const-string v0, "71"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dtmf_nb_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 156
    const-string v0, "70"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dtmf_wb_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 157
    const-string v0, "69"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_qvga_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 158
    const-string v0, "68"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_vga_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 159
    const-string v0, "108"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h264_vgal_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 160
    const-string v0, "132"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h263_qcif_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 161
    const-string v0, "60"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "audio_port_start"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 162
    const-string v0, "61"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "audio_port_end"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 163
    const-string v0, "62"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "video_port_start"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 164
    const-string v0, "63"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "video_port_end"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 165
    const-string v0, "129"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_f

    .line 166
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const-string v4, "evs_payload"

    invoke-static {p0, v4, v1}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 167
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_e

    move v0, v3

    goto :goto_0

    :cond_e
    move v0, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_evs_codec"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    :cond_f
    const-string v0, "131"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 170
    nop

    .line 171
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "evs_default_bitrate"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_10
    const-string v0, "130"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 174
    nop

    .line 175
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    const-string v1, "evs_default_bandwidth"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_11
    const-string v0, "73"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setSmsPsi(Ljava/lang/String;)V

    .line 178
    sget-object v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfAddrList:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfAddressList(Ljava/util/List;)V

    .line 179
    sget v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mLboPcscfPort:I

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfPort(I)V

    .line 180
    const-string v0, "6"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amrnb_mode"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "7"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amrwb_mode"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v0, "36"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "publish_timer"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 183
    nop

    .line 184
    const-string v0, "37"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 183
    const-string v1, "extended_publish_timer"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 185
    const-string v0, "26"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cap_cache_exp"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 186
    const-string v0, "27"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "cap_poll_interval"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 187
    nop

    .line 188
    const-string v0, "28"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 187
    const-string/jumbo v1, "src_throttle_publish"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 189
    const-string v0, "35"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "poll_list_sub_exp"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 190
    const-string v0, "38"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_12

    move v0, v3

    goto :goto_1

    :cond_12
    move v0, v2

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enable_gzip"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 191
    nop

    .line 192
    const-string v0, "29"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 191
    const-string/jumbo v1, "subscribe_max_entry"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 193
    sget-boolean v0, Lcom/sec/internal/ims/settings/DmProfileLoader;->mSmsOverIms:Z

    invoke-virtual {p0, v0}, Lcom/sec/ims/settings/ImsProfile;->setSupportSmsOverIms(Z)V

    .line 194
    const-string v0, "90"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "dm_polling_period"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 195
    const-string v0, "116"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "support_ipsec"

    if-ltz v1, :cond_14

    .line 196
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_13

    move v1, v3

    goto :goto_2

    :cond_13
    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 198
    :cond_14
    sget-boolean v1, Lcom/sec/internal/ims/settings/DmProfileLoader;->mIsKorOp:Z

    if-eqz v1, :cond_16

    .line 199
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const v5, -0x186a0

    if-eq v1, v5, :cond_16

    .line 200
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_15

    move v0, v3

    goto :goto_3

    :cond_15
    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 203
    :cond_16
    const-string v0, "72"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_18

    .line 204
    nop

    .line 205
    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_17

    move v2, v3

    :cond_17
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "volte_service_status"

    invoke-virtual {p0, v1, v0}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 207
    :cond_18
    const-string v0, "55"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    const-string v0, "55"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 208
    const-string v0, "audio_capabilities"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/settings/ImsProfile;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_19
    const-string v0, "159"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "h265_hd720p_payload"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 211
    const-string v0, "84"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "reg_retry_base_time"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 212
    const-string v0, "85"

    invoke-static {v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->getIntValue(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "reg_retry_max_time"

    invoke-static {p0, v1, v0}, Lcom/sec/internal/ims/settings/DmProfileLoader;->setInt(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)V

    .line 213
    return-void
.end method
