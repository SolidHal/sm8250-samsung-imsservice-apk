.class public Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;
.super Lcom/sec/internal/ims/config/adapters/HttpAdapter;
.source "HttpAdapterUp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$ReadyState;,
        Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;
    }
.end annotation


# static fields
.field protected static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 27
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/adapters/HttpAdapter;-><init>(I)V

    .line 28
    new-instance v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp$IdleState;-><init>(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mState:Lcom/sec/internal/ims/config/adapters/HttpAdapter$State;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;
    .param p1, "x1"    # Ljava/lang/StringBuffer;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Z

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->createReqUrlWithMask(Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/StringBuffer;
    .param p3, "x3"    # Ljava/util/Map;

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->dumpAutoConfUrl(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)V

    return-void
.end method

.method private createReqUrlWithMask(Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;
    .locals 16
    .param p1, "url"    # Ljava/lang/StringBuffer;
    .param p3, "needMask"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .line 63
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v1, p1

    const-string v2, "%"

    const-string v3, "&"

    if-eqz v1, :cond_b

    if-eqz p2, :cond_b

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 64
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    const/16 v4, 0x2f

    if-ne v0, v4, :cond_0

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 67
    :cond_0
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/Map$Entry;

    .line 69
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    .line 71
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "=&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    goto :goto_0

    .line 75
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v7, "\\|\\|"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 76
    .local v7, "paramVals":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_9

    aget-object v11, v7, v10

    .line 78
    .local v11, "val":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v11, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    move-object v0, v11

    .local v0, "value":Ljava/lang/String;
    goto :goto_2

    .line 83
    .end local v0    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "utf-8"

    invoke-static {v11, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0    # "value":Ljava/lang/String;
    :goto_2
    if-eqz p3, :cond_8

    .line 87
    const-string v12, "IMSI"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v13, "xxx"

    if-nez v12, :cond_4

    :try_start_1
    const-string v12, "msisdn"

    .line 88
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, "OTP"

    .line 89
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_3

    .line 104
    :cond_3
    move-object v0, v13

    goto :goto_4

    .line 90
    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 91
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v14, 0x8

    if-le v12, v14, :cond_5

    .line 92
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_4

    .line 94
    :cond_5
    move-object v0, v13

    goto :goto_4

    .line 97
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v14, 0x5

    if-le v12, v14, :cond_7

    .line 98
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v0, v12

    goto :goto_4

    .line 100
    :cond_7
    move-object v0, v13

    .line 107
    :cond_8
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    move-object/from16 v13, p0

    goto :goto_5

    .line 109
    .end local v0    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v12, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->LOG_TAG:Ljava/lang/String;

    move-object/from16 v13, p0

    iget v14, v13, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mPhoneId:I

    const-string v15, "UnsupportedEncodingException occur. use plain string"

    invoke-static {v12, v14, v15}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 111
    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 76
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "val":Ljava/lang/String;
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v13, p0

    .line 115
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "paramVals":[Ljava/lang/String;
    goto/16 :goto_0

    .line 116
    :cond_a
    move-object/from16 v13, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 63
    :cond_b
    move-object/from16 v13, p0

    .line 118
    :goto_6
    return-object v1
.end method

.method private dumpAutoConfUrl(Ljava/lang/String;Ljava/lang/StringBuffer;Ljava/util/Map;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "reqUrl"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 128
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mPhoneId:I

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    iget v0, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p3, v1}, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->createReqUrlWithMask(Ljava/lang/StringBuffer;Ljava/util/Map;Z)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 131
    .local v0, "maskedUrl":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mPhoneId:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .end local v0    # "maskedUrl":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 133
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/adapters/HttpAdapterUp;->mPhoneId:I

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    :goto_0
    return-void
.end method
