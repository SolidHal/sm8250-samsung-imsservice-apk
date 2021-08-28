.class public Lcom/sec/internal/ims/gba/GbaBootstrapping;
.super Ljava/lang/Object;
.source "GbaBootstrapping.java"


# static fields
.field protected static final CONNECTION_TIMEOUT:I = 0x2710

.field private static final EXPIRE_TIME_THRESHOLD:I = 0x1e

.field private static final GBA_ME:Ljava/lang/String; = "gba-me"

.field private static final GBA_UICC:Ljava/lang/String; = "gba-u"

.field protected static final READ_DATA_TIMEOUT:I = 0x7530

.field private static sInstance:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/gba/GbaBootstrapping;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBsfNonce:Lcom/sec/internal/ims/gba/Nonce;

.field private mBsfServer:Ljava/lang/String;

.field private mBtid:Ljava/lang/String;

.field private mCipherSuite:Ljava/lang/String;

.field private mCk:[B

.field mContext:Landroid/content/Context;

.field private mGba:Lcom/sec/internal/ims/gba/Gba;

.field private mGbaKey:Ljava/lang/String;

.field private mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

.field private mGbaType:Ljava/lang/String;

.field private mISimDomain:Ljava/lang/String;

.field private mIk:[B

.field private mImpi:Ljava/lang/String;

.field private mIsTls:Z

.field private mLifetime:Ljava/lang/String;

.field private mNafId:[B

.field private mPhoneId:I

.field private mRes:[B

.field private mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

.field mTrustAllCerts:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->sInstance:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-class v0, Lcom/sec/internal/ims/gba/GbaBootstrapping;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->LOG_TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 65
    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mContext:Landroid/content/Context;

    .line 96
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGbaService()Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    .line 97
    new-instance v0, Lcom/sec/internal/ims/gba/Gba;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/gba/Gba;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGba:Lcom/sec/internal/ims/gba/Gba;

    .line 98
    iput p1, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    .line 99
    return-void
.end method

.method private getBsAssociationFromXml(Ljava/lang/String;)V
    .locals 19
    .param p1, "body"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 303
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v2, "utf-8"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v2, v0

    .line 304
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    move-object v4, v0

    .line 305
    .local v4, "parser":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    move-object v5, v0

    .line 306
    .local v5, "root":Lorg/w3c/dom/Element;
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BootstrappingInfo"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    return-void

    .line 310
    :cond_0
    const-string v0, "btid"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;

    .line 311
    const-string v0, "lifetime"

    invoke-interface {v5, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mLifetime:Ljava/lang/String;

    .line 313
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mNafId:[B

    iget-object v6, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mCipherSuite:Ljava/lang/String;

    invoke-static {v6}, Lcom/sec/internal/ims/gba/GbaUtility;->convertCipherSuite(Ljava/lang/String;)[B

    move-result-object v6

    iget-boolean v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mIsTls:Z

    invoke-static {v0, v6, v7}, Lcom/sec/internal/ims/gba/GbaUtility;->getSecurityProtocolId([B[BZ)[B

    move-result-object v0

    move-object v6, v0

    .line 314
    .local v6, "nafId":[B
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mBtid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", mLifetime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mLifetime:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 316
    :try_start_2
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    const-string v7, "gba-u"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    iget-object v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfNonce:Lcom/sec/internal/ims/gba/Nonce;

    invoke-virtual {v7}, Lcom/sec/internal/ims/gba/Nonce;->getRand()[B

    move-result-object v7

    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;

    iget-object v9, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mLifetime:Ljava/lang/String;

    invoke-interface {v0, v7, v8, v9}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->storeGbaBootstrapParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    iget v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-static {v7}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v7

    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-interface {v0, v7, v8, v6}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getNafExternalKeyBase64Decoded(I[B[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaKey:Ljava/lang/String;

    goto :goto_0

    .line 321
    :cond_1
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfNonce:Lcom/sec/internal/ims/gba/Nonce;

    invoke-virtual {v0}, Lcom/sec/internal/ims/gba/Nonce;->getRand()[B

    move-result-object v0

    const/4 v7, 0x1

    const/16 v8, 0x11

    invoke-static {v0, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 322
    .local v12, "bRand":[B
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mCk:[B

    iget-object v11, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mIk:[B

    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 323
    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    iget-object v14, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mNafId:[B

    iget-object v15, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mLifetime:Ljava/lang/String;

    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;

    iget-boolean v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mIsTls:Z

    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mCipherSuite:Ljava/lang/String;

    .line 324
    invoke-static {v8}, Lcom/sec/internal/ims/gba/GbaUtility;->convertCipherSuite(Ljava/lang/String;)[B

    move-result-object v18

    .line 322
    move-object/from16 v16, v0

    move/from16 v17, v7

    invoke-static/range {v9 .. v18}, Lcom/sec/internal/ims/gba/GbaUtility;->igenerateGbaMEKey([B[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Z[B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaKey:Ljava/lang/String;

    .line 328
    .end local v12    # "bRand":[B
    :goto_0
    iget-object v13, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGba:Lcom/sec/internal/ims/gba/Gba;

    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v14

    iget-object v15, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mNafId:[B

    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaKey:Ljava/lang/String;

    const/4 v7, 0x2

    .line 329
    invoke-static {v0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v16

    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mLifetime:Ljava/lang/String;

    iget-object v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;

    .line 328
    move-object/from16 v17, v0

    move-object/from16 v18, v7

    invoke-virtual/range {v13 .. v18}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gbaKey = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaKey:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 333
    goto :goto_1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 338
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "parser":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v6    # "nafId":[B
    :goto_1
    goto :goto_3

    .line 334
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v3, p1

    .line 335
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 336
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 339
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_3
    return-void
.end method

.method private static getCnonce()Ljava/lang/String;
    .locals 2

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/internal/ims/gba/GbaBootstrapping;
    .locals 3
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/internal/ims/gba/GbaBootstrapping;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->sInstance:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 88
    sget-object v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->sInstance:Landroid/util/SparseArray;

    new-instance v2, Lcom/sec/internal/ims/gba/GbaBootstrapping;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/gba/GbaBootstrapping;-><init>(I)V

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->sInstance:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 86
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getRealm()Ljava/lang/String;
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 382
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadBsfAddressAndISimDomain(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 102
    const-string/jumbo v0, "xcap_root_uri_pref"

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 103
    .local v0, "xcapUriPref":I
    const-string v2, ""

    .line 104
    .local v2, "bsfIp":Ljava/lang/String;
    const-string v3, "bsf_port"

    const/16 v4, 0x50

    invoke-static {p1, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v3

    .line 105
    .local v3, "bsfPort":I
    const/4 v4, 0x1

    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 110
    const-string v1, "bsf_ip"

    const-string v4, ""

    invoke-static {p1, v1, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v2    # "bsfIp":Ljava/lang/String;
    .local v1, "bsfIp":Ljava/lang/String;
    goto :goto_0

    .line 107
    .end local v1    # "bsfIp":Ljava/lang/String;
    .restart local v2    # "bsfIp":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getBSFDomain(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 108
    .end local v2    # "bsfIp":Ljava/lang/String;
    .restart local v1    # "bsfIp":Ljava/lang/String;
    nop

    .line 114
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfServer:Ljava/lang/String;

    .line 115
    const/16 v4, 0x1bb

    if-ne v3, v4, :cond_1

    .line 116
    const-string v4, "http"

    const-string v5, "https"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfServer:Ljava/lang/String;

    .line 118
    :cond_1
    return-void
.end method

.method private makeAuthenticateHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "realm"    # Ljava/lang/String;
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "response"    # Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    .line 343
    .local v0, "username":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Digest username=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", realm=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", uri=\"/\", nonce=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\", response=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "auth":Ljava/lang/String;
    return-object v1
.end method

.method private parseIsimResponse([B)V
    .locals 8
    .param p1, "result"    # [B

    .line 350
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 351
    .local v1, "resultCode":[B
    const/4 v2, 0x0

    aget-byte v3, p1, v2

    aput-byte v3, v1, v2

    .line 353
    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    return-void

    .line 357
    :cond_0
    aget-byte v2, p1, v0

    .line 358
    .local v2, "pwdLen":I
    aget-byte v3, p1, v0

    add-int/2addr v3, v0

    add-int/2addr v3, v0

    aget-byte v3, p1, v3

    .line 359
    .local v3, "ckLen":I
    aget-byte v4, p1, v0

    add-int/2addr v4, v0

    add-int/2addr v4, v0

    aget-byte v5, p1, v0

    add-int/2addr v5, v0

    add-int/2addr v5, v0

    aget-byte v5, p1, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    aget-byte v4, p1, v4

    .line 362
    .local v4, "ikLen":I
    new-array v5, v2, [B

    iput-object v5, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mRes:[B

    .line 363
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 364
    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mRes:[B

    add-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v0

    aget-byte v7, p1, v7

    aput-byte v7, v6, v5

    .line 363
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 367
    .end local v5    # "i":I
    :cond_1
    new-array v5, v3, [B

    iput-object v5, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mCk:[B

    .line 368
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 369
    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mCk:[B

    aget-byte v7, p1, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, v6, v5

    .line 368
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 372
    .end local v5    # "i":I
    :cond_2
    new-array v5, v4, [B

    iput-object v5, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mIk:[B

    .line 373
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v4, :cond_3

    .line 374
    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mIk:[B

    aget-byte v7, p1, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v0

    add-int/2addr v7, v3

    add-int/2addr v7, v0

    add-int/2addr v7, v5

    aget-byte v7, p1, v7

    aput-byte v7, v6, v5

    .line 373
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 376
    .end local v5    # "i":I
    :cond_3
    return-void
.end method

.method private startBootstrappingProc()I
    .locals 27

    .line 123
    move-object/from16 v1, p0

    const-string v0, "3gpp-gba"

    const-string v2, ""

    const/4 v3, 0x0

    .line 124
    .local v3, "httpReq":Lcom/sec/internal/helper/HttpRequest;
    const/4 v4, 0x0

    .line 125
    .local v4, "code":I
    iget v5, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 128
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v6, -0x1

    :try_start_0
    iget v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    const-string/jumbo v8, "xdm_user_id_domain"

    invoke-static {v7, v8, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 130
    .local v7, "realm":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 131
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->getRealm()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 133
    :cond_0
    invoke-direct {v1, v7, v2, v2}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->makeAuthenticateHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "auth":Ljava/lang/String;
    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfServer:Ljava/lang/String;

    invoke-static {v8}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v8

    .line 137
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/HttpRequest;->useCaches(Z)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v8

    .line 138
    const/16 v10, 0x2710

    invoke-virtual {v8, v10}, Lcom/sec/internal/helper/HttpRequest;->connectTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v8

    .line 139
    const/16 v11, 0x7530

    invoke-virtual {v8, v11}, Lcom/sec/internal/helper/HttpRequest;->readTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v8

    .line 140
    invoke-virtual {v8, v2}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v8

    move-object v3, v8

    .line 142
    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/HttpRequest;->userAgent(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 143
    sget-object v8, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;
    :try_end_0
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v12, "X-TMUS-IMEI"

    if-ne v5, v8, :cond_1

    .line 144
    :try_start_1
    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    iget v13, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-interface {v8, v13}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getImei(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v12, v8}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 147
    :cond_1
    iget-boolean v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mTrustAllCerts:Z

    if-eqz v8, :cond_2

    .line 148
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    .line 152
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v8

    move v4, v8

    .line 154
    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "response: code="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", message="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 162
    .end local v2    # "auth":Ljava/lang/String;
    .end local v7    # "realm":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 163
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 167
    :cond_3
    const/16 v2, 0x191

    if-eq v4, v2, :cond_4

    .line 168
    return v6

    .line 171
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->wwwAuthenticate()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "challenge":Ljava/lang/String;
    iget-object v6, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "challenge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v6, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v6}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    .line 176
    .local v6, "authHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    invoke-virtual {v6, v2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->wwwAuthHeaderParse(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v7

    iput-object v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 179
    new-instance v7, Lcom/sec/internal/ims/gba/Nonce;

    invoke-direct {v7}, Lcom/sec/internal/ims/gba/Nonce;-><init>()V

    iput-object v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfNonce:Lcom/sec/internal/ims/gba/Nonce;

    .line 180
    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    invoke-virtual {v8}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/gba/Nonce;->parseNonce(Ljava/lang/String;)V

    .line 182
    iget-object v7, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfNonce:Lcom/sec/internal/ims/gba/Nonce;

    invoke-virtual {v7}, Lcom/sec/internal/ims/gba/Nonce;->getAutnRand()[B

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "nonce":Ljava/lang/String;
    iget-object v8, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    const-string v13, "gba-u"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 185
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v8

    .line 186
    .local v8, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v8, v7}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 187
    .local v13, "response":Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->parseIsimResponse([B)V

    .line 191
    .end local v8    # "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v13    # "response":Ljava/lang/String;
    :cond_5
    const-string v8, "00000001"

    .line 192
    .local v8, "nonceCount":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->getCnonce()Ljava/lang/String;

    move-result-object v13

    .line 194
    .local v13, "cnonce":Ljava/lang/String;
    new-instance v14, Lcom/sec/internal/helper/DigestCalculator;

    iget-object v15, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    iget-object v11, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 195
    invoke-virtual {v11}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v17

    iget-object v11, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 196
    invoke-virtual {v11}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v19

    iget-object v11, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 198
    invoke-virtual {v11}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v21

    iget-object v11, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 199
    invoke-virtual {v11}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v22

    iget-object v11, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mRes:[B

    const/16 v26, 0x0

    const-string v24, "GET"

    const-string v25, "/"

    move-object/from16 v16, v15

    move-object v15, v14

    move-object/from16 v18, v13

    move-object/from16 v20, v8

    move-object/from16 v23, v11

    invoke-direct/range {v15 .. v26}, Lcom/sec/internal/helper/DigestCalculator;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;[B)V

    move-object v11, v14

    .line 205
    .local v11, "digest":Lcom/sec/internal/helper/DigestCalculator;
    invoke-virtual {v11}, Lcom/sec/internal/helper/DigestCalculator;->calculateDigest()Ljava/lang/String;

    move-result-object v14

    .line 207
    .local v14, "response":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Digest username=\""

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", realm=\""

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 208
    invoke-virtual {v10}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", nonce=\""

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 209
    invoke-virtual {v10}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", uri=\"/\", qop=\""

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 211
    invoke-virtual {v10}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", nc="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", cnonce=\""

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", response=\""

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", opaque=\""

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 215
    invoke-virtual {v10}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getOpaque()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\", algorithm="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mResponseAuthHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 216
    invoke-virtual {v10}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 220
    .local v10, "authHeader":Ljava/lang/String;
    :try_start_2
    iget-object v15, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfServer:Ljava/lang/String;

    invoke-static {v15}, Lcom/sec/internal/helper/HttpRequest;->get(Ljava/lang/CharSequence;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v15

    .line 221
    invoke-virtual {v15, v9}, Lcom/sec/internal/helper/HttpRequest;->useCaches(Z)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v15

    .line 222
    const/16 v9, 0x2710

    invoke-virtual {v15, v9}, Lcom/sec/internal/helper/HttpRequest;->connectTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v9

    .line 223
    const/16 v15, 0x7530

    invoke-virtual {v9, v15}, Lcom/sec/internal/helper/HttpRequest;->readTimeout(I)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v9

    const-string v15, "gzip;q=0,identity;q=1"

    .line 224
    invoke-virtual {v9, v15}, Lcom/sec/internal/helper/HttpRequest;->acceptEncoding(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v9

    .line 225
    invoke-virtual {v9, v10}, Lcom/sec/internal/helper/HttpRequest;->authorization(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    move-result-object v9

    move-object v3, v9

    .line 227
    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/HttpRequest;->userAgent(Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 228
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v5, v0, :cond_6

    .line 229
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    iget v9, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getImei(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lcom/sec/internal/helper/HttpRequest;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/helper/HttpRequest;

    .line 232
    :cond_6
    iget-boolean v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mTrustAllCerts:Z

    if-eqz v0, :cond_7

    .line 233
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->trustAllCerts()Lcom/sec/internal/helper/HttpRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest;->trustAllHosts()Lcom/sec/internal/helper/HttpRequest;

    .line 236
    :cond_7
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->ok()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 237
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->body()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "body":Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->getBsAssociationFromXml(Ljava/lang/String;)V

    .line 240
    .end local v0    # "body":Ljava/lang/String;
    goto :goto_0

    .line 241
    :cond_8
    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaBootstrapping;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BSF authenticate failed, "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->code()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->message()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/sec/internal/helper/HttpRequest$HttpRequestException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :try_start_3
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 245
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 248
    .end local v0    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :cond_9
    :goto_0
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 249
    nop

    .line 251
    const/4 v9, 0x0

    return v9

    .line 248
    :goto_1
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 249
    throw v0

    .line 162
    .end local v2    # "challenge":Ljava/lang/String;
    .end local v6    # "authHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .end local v7    # "nonce":Ljava/lang/String;
    .end local v8    # "nonceCount":Ljava/lang/String;
    .end local v10    # "authHeader":Ljava/lang/String;
    .end local v11    # "digest":Lcom/sec/internal/helper/DigestCalculator;
    .end local v13    # "cnonce":Ljava/lang/String;
    .end local v14    # "response":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 155
    :catch_1
    move-exception v0

    .line 156
    .restart local v0    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :try_start_4
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 157
    invoke-virtual {v0}, Lcom/sec/internal/helper/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 160
    :cond_a
    nop

    .line 162
    if-eqz v3, :cond_b

    .line 163
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 160
    :cond_b
    return v6

    .line 162
    .end local v0    # "e":Lcom/sec/internal/helper/HttpRequest$HttpRequestException;
    :goto_2
    if-eqz v3, :cond_c

    .line 163
    invoke-virtual {v3}, Lcom/sec/internal/helper/HttpRequest;->disconnect()Lcom/sec/internal/helper/HttpRequest;

    .line 165
    :cond_c
    throw v0
.end method


# virtual methods
.method public declared-synchronized getBootstrappedSa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/gba/BootstrappedSa;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "cipherSuite"    # Ljava/lang/String;
    .param p4, "trustAllCerts"    # Z

    monitor-enter p0

    .line 256
    :try_start_0
    iput-boolean p4, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mTrustAllCerts:Z

    .line 257
    iput-object p3, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mCipherSuite:Ljava/lang/String;

    .line 258
    invoke-static {p1}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "nafUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 260
    monitor-exit p0

    return-object v2

    .line 262
    :cond_0
    :try_start_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mNafId:[B

    .line 263
    iget v1, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 264
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mIsTls:Z

    .line 265
    sget-object v3, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_1

    .line 266
    invoke-static {p1}, Lcom/sec/internal/ims/gba/GbaUtility;->isTls(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mIsTls:Z

    .line 269
    .end local p0    # "this":Lcom/sec/internal/ims/gba/GbaBootstrapping;
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    iget v4, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->getImpi(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    .line 270
    iget v3, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->loadBsfAddressAndISimDomain(I)V

    .line 272
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaServiceModule:Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;

    iget v4, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;->isGbaUiccSupported(I)Z

    move-result v3

    .line 274
    .local v3, "gbaUiccSupported":Z
    if-eqz v3, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v4, v1, :cond_2

    .line 275
    const-string v4, "gba-u"

    iput-object v4, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    goto :goto_0

    .line 277
    :cond_2
    const-string v4, "gba-me"

    iput-object v4, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    .line 280
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GbaBootstrapping() mBsfServer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBsfServer:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mImpi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mImpi:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mGbaType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGba:Lcom/sec/internal/ims/gba/Gba;

    iget-object v5, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mNafId:[B

    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaType:Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    iget v7, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mPhoneId:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v4

    .line 286
    .local v4, "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    if-nez v4, :cond_4

    .line 287
    invoke-direct {p0}, Lcom/sec/internal/ims/gba/GbaBootstrapping;->startBootstrappingProc()I

    .line 288
    iget-object v5, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaKey:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_5

    .line 289
    :cond_3
    monitor-exit p0

    return-object v2

    .line 292
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/gba/GbaValue;->getBtid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;

    .line 293
    invoke-virtual {v4}, Lcom/sec/internal/ims/gba/GbaValue;->getValue()[B

    move-result-object v2

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaKey:Ljava/lang/String;

    .line 296
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "return GBA key: mGbaKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mBtid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    new-instance v2, Lcom/sec/internal/ims/gba/BootstrappedSa;

    iget-object v5, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mGbaKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaBootstrapping;->mBtid:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Lcom/sec/internal/ims/gba/BootstrappedSa;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    .local v2, "bsa":Lcom/sec/internal/ims/gba/BootstrappedSa;
    monitor-exit p0

    return-object v2

    .line 255
    .end local v0    # "nafUri":Ljava/lang/String;
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    .end local v2    # "bsa":Lcom/sec/internal/ims/gba/BootstrappedSa;
    .end local v3    # "gbaUiccSupported":Z
    .end local v4    # "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "fqdn":Ljava/lang/String;
    .end local p3    # "cipherSuite":Ljava/lang/String;
    .end local p4    # "trustAllCerts":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
