.class public Lcom/sec/internal/ims/gba/GbaServiceModule;
.super Landroid/os/Handler;
.source "GbaServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/gba/IGbaServiceModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;
    }
.end annotation


# static fields
.field private static final GBA_ME:Ljava/lang/String; = "gba-me"

.field public static final GBA_UICC:Ljava/lang/String; = "gba-u"

.field private static final IMS_AUTH_NO_ERR_STRING:Ljava/lang/String; = "db"

.field private static final IMS_AUTH_SYNC_FAIL:Ljava/lang/String; = "dc"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static gbaKey:[B


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGba:Lcom/sec/internal/ims/gba/Gba;

.field private mGbaCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mGbaEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/gba/IGbaEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mLastDigestInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private resLen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->gbaKey:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "framework"    # Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 78
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->resLen:I

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mLastDigestInfoMap:Ljava/util/HashMap;

    .line 79
    iput-object p2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mContext:Landroid/content/Context;

    .line 80
    iput-object p3, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 82
    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 83
    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->initGbaAccessibleObj()Z

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/gba/GbaServiceModule;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/gba/GbaServiceModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Z
    .param p6, "x6"    # Ljava/lang/String;

    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/gba/GbaServiceModule;->responseWwwHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private generateGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;
    .locals 20
    .param p1, "gbaType"    # [B
    .param p2, "nafId"    # [B
    .param p3, "rand"    # [B
    .param p4, "btid"    # Ljava/lang/String;
    .param p5, "lifetime"    # Ljava/lang/String;
    .param p6, "cipherSuite"    # Ljava/lang/String;
    .param p7, "keys"    # Lcom/sec/internal/ims/gba/params/GbaData;
    .param p8, "isTLS"    # Z
    .param p9, "phoneId"    # I

    .line 537
    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    iget-object v0, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    .line 538
    const/4 v0, 0x0

    return-object v0

    .line 541
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v12}, Ljava/lang/String;-><init>([B)V

    move-object v15, v0

    .line 542
    .local v15, "gba":Ljava/lang/String;
    const/4 v0, 0x0

    .line 543
    .local v0, "mCipherSuite":[B
    sget-object v2, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateGbaKey(): gbaType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nafId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v13}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v16, 0x0

    .line 547
    .local v16, "base64response":Ljava/lang/String;
    const-string v2, "gba-u"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 548
    move-object/from16 v11, p4

    move-object/from16 v10, p5

    invoke-virtual {v1, v14, v11, v10}, Lcom/sec/internal/ims/gba/GbaServiceModule;->storeGbaBootstrapParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 549
    const/4 v2, 0x0

    .line 550
    .local v2, "bNafid":[B
    const/4 v3, 0x0

    .line 551
    .local v3, "gbaValue":[B
    const/4 v4, 0x0

    .line 553
    .local v4, "response":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/sec/internal/ims/gba/GbaUtility;->convertCipherSuite(Ljava/lang/String;)[B

    move-result-object v9

    .line 554
    .end local v0    # "mCipherSuite":[B
    .local v9, "mCipherSuite":[B
    move/from16 v8, p8

    invoke-static {v13, v9, v8}, Lcom/sec/internal/ims/gba/GbaUtility;->getSecurityProtocolId([B[BZ)[B

    move-result-object v17

    .line 556
    .end local v2    # "bNafid":[B
    .local v17, "bNafid":[B
    invoke-static/range {v17 .. v17}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    .line 557
    .local v7, "challenge":Ljava/lang/String;
    invoke-static/range {p9 .. p9}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    invoke-direct {v1, v0, v7}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getGbaKeyResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 558
    .end local v4    # "response":Ljava/lang/String;
    .local v6, "response":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateGbaKey(): response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    if-eqz v6, :cond_1

    .line 561
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v0
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 563
    goto :goto_0

    .line 562
    :catch_0
    move-exception v0

    .line 566
    :cond_1
    move-object v0, v3

    .end local v3    # "gbaValue":[B
    .local v0, "gbaValue":[B
    :goto_0
    if-eqz v0, :cond_2

    .line 567
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->parseResKeyFromIsimResponse([B)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v5, v16

    goto :goto_1

    .line 566
    :cond_2
    move-object/from16 v5, v16

    .line 569
    .end local v16    # "base64response":Ljava/lang/String;
    .local v5, "base64response":Ljava/lang/String;
    :goto_1
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    if-eqz v2, :cond_3

    if-eqz v5, :cond_3

    .line 570
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v16

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v18, v5

    .end local v5    # "base64response":Ljava/lang/String;
    .local v18, "base64response":Ljava/lang/String;
    move-object/from16 v5, v16

    move-object/from16 v16, v6

    .end local v6    # "response":Ljava/lang/String;
    .local v16, "response":Ljava/lang/String;
    move-object/from16 v6, p5

    move-object/from16 v19, v7

    .end local v7    # "challenge":Ljava/lang/String;
    .local v19, "challenge":Ljava/lang/String;
    move-object/from16 v7, p4

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    .line 569
    .end local v16    # "response":Ljava/lang/String;
    .end local v18    # "base64response":Ljava/lang/String;
    .end local v19    # "challenge":Ljava/lang/String;
    .restart local v5    # "base64response":Ljava/lang/String;
    .restart local v6    # "response":Ljava/lang/String;
    .restart local v7    # "challenge":Ljava/lang/String;
    :cond_3
    move-object/from16 v18, v5

    move-object/from16 v16, v6

    move-object/from16 v19, v7

    .line 573
    .end local v0    # "gbaValue":[B
    .end local v5    # "base64response":Ljava/lang/String;
    .end local v6    # "response":Ljava/lang/String;
    .end local v7    # "challenge":Ljava/lang/String;
    .end local v17    # "bNafid":[B
    .restart local v18    # "base64response":Ljava/lang/String;
    :goto_2
    move-object/from16 v5, v18

    goto :goto_3

    .line 574
    .end local v9    # "mCipherSuite":[B
    .end local v18    # "base64response":Ljava/lang/String;
    .local v0, "mCipherSuite":[B
    .local v16, "base64response":Ljava/lang/String;
    :cond_4
    move-object/from16 v11, p4

    move-object/from16 v10, p5

    const/4 v2, 0x1

    const/16 v3, 0x11

    invoke-static {v14, v2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    .line 575
    .local v17, "bRand":[B
    move/from16 v9, p9

    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getImpi(I)Ljava/lang/String;

    move-result-object v8

    .line 576
    .local v8, "impi":Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/sec/internal/ims/gba/GbaUtility;->convertCipherSuite(Ljava/lang/String;)[B

    move-result-object v0

    .line 577
    nop

    .line 578
    invoke-virtual/range {p7 .. p7}, Lcom/sec/internal/ims/gba/params/GbaData;->getCipkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual/range {p7 .. p7}, Lcom/sec/internal/ims/gba/params/GbaData;->getIntkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 579
    invoke-virtual {v8, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    .line 577
    move-object/from16 v2, p1

    move-object/from16 v5, v17

    move-object/from16 v7, p2

    move-object/from16 v18, v8

    .end local v8    # "impi":Ljava/lang/String;
    .local v18, "impi":Ljava/lang/String;
    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move/from16 v10, p8

    move-object v11, v0

    invoke-static/range {v2 .. v11}, Lcom/sec/internal/ims/gba/GbaUtility;->igenerateGbaMEKey([B[B[B[B[B[BLjava/lang/String;Ljava/lang/String;Z[B)Ljava/lang/String;

    move-result-object v9

    .line 581
    .end local v16    # "base64response":Ljava/lang/String;
    .local v9, "base64response":Ljava/lang/String;
    iget-object v2, v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    if-eqz v2, :cond_5

    .line 582
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p4

    move/from16 v8, p9

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;I)V

    .line 587
    .end local v17    # "bRand":[B
    .end local v18    # "impi":Ljava/lang/String;
    :cond_5
    move-object v5, v9

    move-object v9, v0

    .end local v0    # "mCipherSuite":[B
    .restart local v5    # "base64response":Ljava/lang/String;
    .local v9, "mCipherSuite":[B
    :goto_3
    return-object v5
.end method

.method private getAuthInfo(ILjava/lang/String;)Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "requestUri"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mLastDigestInfoMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;

    return-object v0
.end method

.method private getGbaKeyResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "subId"    # I
    .param p2, "challenge"    # Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    .line 661
    const/4 v0, 0x0

    return-object v0

    .line 664
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, "chalLen":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 666
    .local v1, "chalData":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 668
    .local v2, "chalDataLen":I
    const-string v3, ""

    .line 671
    .local v3, "response":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v5, 0x5

    invoke-interface {v4, p1, v5}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v4

    .line 672
    .local v4, "aid":Ljava/lang/String;
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, p1, v4, v1, v5}, Lcom/sec/internal/ims/gba/GbaServiceModule;->transmitLogicChannel(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 673
    sget-object v5, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getGbaKeyResponse response "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    nop

    .end local v4    # "aid":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v4

    .line 676
    :goto_0
    return-object v3
.end method

.method private getIsimResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I
    .param p2, "challenge"    # Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    .line 681
    const/4 v0, 0x0

    return-object v0

    .line 684
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "00"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "ChalData":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 687
    .local v1, "ChalDataLen":I
    const-string v2, ""

    .line 690
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v4, 0x5

    invoke-interface {v3, p1, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAidForAppType(II)Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, "aid":Ljava/lang/String;
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/sec/internal/ims/gba/GbaServiceModule;->transmitLogicChannel(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 692
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getIsimResponse response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    nop

    .end local v3    # "aid":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v3

    .line 695
    :goto_0
    return-object v2
.end method

.method private isRealmFromUsername(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 699
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 700
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->KPN_NED:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEFONICA_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private resetAuthInfo(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "requestUri"    # Ljava/lang/String;

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mLastDigestInfoMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    return-void
.end method

.method private responseWwwHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 22
    .param p1, "phoneId"    # I
    .param p2, "requestUri"    # Ljava/lang/String;
    .param p3, "btId"    # Ljava/lang/String;
    .param p4, "gbaKey"    # Ljava/lang/String;
    .param p5, "isGbaUiccSupported"    # Z
    .param p6, "wwwAuthHeader"    # Ljava/lang/String;

    .line 381
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 382
    .local v4, "authHeader":Ljava/lang/String;
    const/4 v5, 0x0

    .line 384
    .local v5, "nafUri":Ljava/net/URL;
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    .line 387
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 389
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :goto_0
    new-instance v0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v0}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    .line 390
    .local v0, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    move-object/from16 v6, p6

    invoke-virtual {v0, v6}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v7

    .line 392
    .local v7, "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 393
    .local v8, "realms":[Ljava/lang/String;
    const-string v9, ""

    .line 394
    .local v9, "realm":Ljava/lang/String;
    const-string v10, "/"

    .line 396
    .local v10, "nafPath":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 397
    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 400
    :cond_0
    array-length v11, v8

    const/4 v12, 0x0

    move v13, v12

    :goto_1
    if-ge v13, v11, :cond_3

    aget-object v14, v8, v13

    .line 401
    .local v14, "val":Ljava/lang/String;
    const-string/jumbo v15, "uicc"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    if-eqz p5, :cond_1

    .line 402
    move-object v9, v14

    .line 403
    goto :goto_2

    .line 404
    :cond_1
    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    if-nez p5, :cond_2

    .line 405
    move-object v9, v14

    .line 406
    goto :goto_2

    .line 400
    .end local v14    # "val":Ljava/lang/String;
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 409
    :cond_3
    :goto_2
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v11

    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 410
    .local v20, "qop":[Ljava/lang/String;
    new-instance v11, Lcom/sec/internal/helper/httpclient/DigestAuth;

    invoke-direct {v11}, Lcom/sec/internal/helper/httpclient/DigestAuth;-><init>()V

    move-object v15, v11

    .line 411
    .local v15, "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    nop

    .line 412
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v16

    .line 413
    invoke-virtual {v7}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v18

    aget-object v19, v20, v12

    .line 411
    const-string v17, "GET"

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object v14, v9

    move-object/from16 v21, v0

    move-object v0, v15

    .end local v15    # "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    .local v0, "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    .local v21, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v19}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-static {v0, v7}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Lcom/sec/internal/helper/httpclient/DigestAuth;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v4

    .line 415
    new-instance v11, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;

    const/4 v12, 0x0

    invoke-direct {v11, v12}, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;-><init>(Lcom/sec/internal/ims/gba/GbaServiceModule$1;)V

    .line 416
    .local v11, "authInfo":Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;
    iput-object v0, v11, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 417
    iput-object v7, v11, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;->wwwHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 418
    invoke-direct {v1, v2, v3, v11}, Lcom/sec/internal/ims/gba/GbaServiceModule;->setAuthInfo(ILjava/lang/String;Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;)V

    .line 419
    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/gba/GbaServiceModule;->notifyOnGbaEvent(ILjava/lang/String;)V

    .line 420
    return-void
.end method

.method private setAuthInfo(ILjava/lang/String;Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "requestUri"    # Ljava/lang/String;
    .param p3, "authInfo"    # Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;

    .line 704
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mLastDigestInfoMap:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    return-void
.end method

.method private static splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "nonce"    # Ljava/lang/String;

    .line 519
    nop

    .line 520
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 519
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 523
    .local v0, "challenge":[B
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 524
    .local v2, "akaChallenge":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Decoded AKA Challenge: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    .line 526
    const-string v1, ""

    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 529
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "10"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "rand":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 531
    .local v4, "autn":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/String;

    aput-object v3, v1, v6

    const/4 v5, 0x1

    aput-object v4, v1, v5

    return-object v1
.end method


# virtual methods
.method public getAuthorizationHeader(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "phoneId"    # I
    .param p2, "requestUri"    # Ljava/lang/String;
    .param p3, "wwwAuthenticateHeader"    # Ljava/lang/String;
    .param p4, "cipherSuite"    # Ljava/lang/String;

    .line 317
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 318
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request from Msgp app without 401 URI :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 320
    .local v4, "nafId":[B
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v6, "gba-me"

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    .line 321
    .local v5, "gbaType":[B
    iget-object v6, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    invoke-virtual {v6, v4, v5, v1}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v6

    .line 322
    .local v6, "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    if-nez v6, :cond_0

    .line 323
    const-string v7, "Required NAF Again"

    invoke-virtual {v0, v1, v7}, Lcom/sec/internal/ims/gba/GbaServiceModule;->notifyOnGbaError(ILjava/lang/String;)V

    .line 324
    return-void

    .line 326
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getAuthInfo(ILjava/lang/String;)Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;

    move-result-object v7

    .line 327
    .local v7, "authInfo":Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;
    iget-object v15, v7, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 328
    .local v15, "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    iget-object v14, v7, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;->wwwHeader:Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    .line 329
    .local v14, "wwwAuthHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    invoke-virtual {v14}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getQop()Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 330
    .local v17, "qop":[Ljava/lang/String;
    invoke-virtual {v6}, Lcom/sec/internal/ims/gba/GbaValue;->getBtid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/sec/internal/ims/gba/GbaValue;->getValue()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/helper/StrUtil;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 331
    invoke-virtual {v14}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getNonce()Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 332
    invoke-virtual {v14}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getAlgorithm()Ljava/lang/String;

    move-result-object v18

    const/4 v8, 0x0

    aget-object v19, v17, v8

    .line 330
    const-string v13, "GET"

    move-object v8, v15

    move-object/from16 v20, v4

    move-object v4, v14

    .end local v14    # "wwwAuthHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .local v4, "wwwAuthHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .local v20, "nafId":[B
    move-object/from16 v14, v16

    move-object/from16 v21, v5

    move-object v5, v15

    .end local v15    # "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    .local v5, "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    .local v21, "gbaType":[B
    move-object/from16 v15, v18

    move-object/from16 v16, v19

    invoke-virtual/range {v8 .. v16}, Lcom/sec/internal/helper/httpclient/DigestAuth;->setDigestAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v5, v4}, Lcom/sec/internal/helper/header/AuthorizationHeader;->getAuthorizationHeader(Lcom/sec/internal/helper/httpclient/DigestAuth;Lcom/sec/internal/helper/header/WwwAuthenticateHeader;)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "authHeader":Ljava/lang/String;
    iput-object v5, v7, Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;->digestAuth:Lcom/sec/internal/helper/httpclient/DigestAuth;

    .line 336
    invoke-direct {v0, v1, v2, v7}, Lcom/sec/internal/ims/gba/GbaServiceModule;->setAuthInfo(ILjava/lang/String;Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;)V

    .line 337
    invoke-virtual {v0, v1, v8}, Lcom/sec/internal/ims/gba/GbaServiceModule;->notifyOnGbaEvent(ILjava/lang/String;)V

    .line 338
    .end local v4    # "wwwAuthHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .end local v5    # "digestAuth":Lcom/sec/internal/helper/httpclient/DigestAuth;
    .end local v6    # "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    .end local v7    # "authInfo":Lcom/sec/internal/ims/gba/GbaServiceModule$LastAuthInfo;
    .end local v8    # "authHeader":Ljava/lang/String;
    .end local v17    # "qop":[Ljava/lang/String;
    .end local v20    # "nafId":[B
    .end local v21    # "gbaType":[B
    move-object/from16 v10, p4

    goto/16 :goto_1

    .line 339
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Request from Msg app with 401 Auth header URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v4, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;

    invoke-direct {v4}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;-><init>()V

    .line 342
    .local v4, "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    invoke-virtual {v4, v3}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    move-result-object v5

    .line 343
    .local v5, "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    invoke-virtual {v5}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->getRealm()Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, "realm":Ljava/lang/String;
    iget-object v7, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 345
    .local v7, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v15

    .line 346
    .local v15, "network":Landroid/net/Network;
    invoke-virtual {v7, v15}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v16

    .line 348
    .local v16, "linkProperties":Landroid/net/LinkProperties;
    const-string v8, "3GPP-bootstrapping"

    invoke-virtual {v6, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 349
    new-instance v8, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    move-object v14, v8

    .line 350
    .local v14, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-virtual {v14, v1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 351
    sget-object v8, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v14, v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 352
    invoke-virtual {v14, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 353
    const-wide/16 v8, 0x1388

    invoke-virtual {v14, v8, v9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 354
    new-instance v13, Lcom/sec/internal/helper/httpclient/DnsController;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v12

    const/16 v17, 0x5

    const/16 v18, 0x0

    .line 355
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v19

    move-object v8, v13

    move-object v11, v15

    move-object/from16 v22, v13

    move/from16 v13, v17

    move-object/from16 v23, v14

    .end local v14    # "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .local v23, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    move/from16 v14, v18

    move-object/from16 v17, v15

    .end local v15    # "network":Landroid/net/Network;
    .local v17, "network":Landroid/net/Network;
    move-object/from16 v15, v19

    invoke-direct/range {v8 .. v15}, Lcom/sec/internal/helper/httpclient/DnsController;-><init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;)V

    .line 354
    move-object/from16 v9, v22

    move-object/from16 v8, v23

    .end local v23    # "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .local v8, "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lcom/squareup/okhttp/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 356
    iget-object v9, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getBSFDomain(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 357
    .local v9, "bsfServer":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setBsfUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 359
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 360
    move-object/from16 v10, p4

    invoke-virtual {v8, v10}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuite(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_2
    move-object/from16 v10, p4

    .line 363
    :goto_0
    invoke-direct/range {p0 .. p2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->resetAuthInfo(ILjava/lang/String;)V

    .line 364
    invoke-virtual {v8}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v11

    invoke-virtual {v0, v6, v11}, Lcom/sec/internal/ims/gba/GbaServiceModule;->resetGbaKey(Ljava/lang/String;I)V

    .line 365
    const/4 v11, 0x0

    new-instance v12, Lcom/sec/internal/ims/gba/GbaServiceModule$1;

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/sec/internal/ims/gba/GbaServiceModule$1;-><init>(Lcom/sec/internal/ims/gba/GbaServiceModule;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8, v6, v11, v12}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)V

    goto :goto_1

    .line 348
    .end local v8    # "requestParams":Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .end local v9    # "bsfServer":Ljava/lang/String;
    .end local v17    # "network":Landroid/net/Network;
    .restart local v15    # "network":Landroid/net/Network;
    :cond_3
    move-object/from16 v10, p4

    move-object/from16 v17, v15

    .line 378
    .end local v4    # "wwwAuthHeaderParser":Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
    .end local v5    # "wwwAuthParsedHeader":Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .end local v6    # "realm":Ljava/lang/String;
    .end local v7    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v15    # "network":Landroid/net/Network;
    .end local v16    # "linkProperties":Landroid/net/LinkProperties;
    :goto_1
    return-void
.end method

.method public getBtidAndGbaKey(Lcom/sec/internal/helper/httpclient/HttpRequestParams;Ljava/lang/String;Lcom/sec/internal/helper/httpclient/HttpResponseParams;Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;)V
    .locals 27
    .param p1, "requestParams"    # Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .param p2, "fqdn"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;
    .param p4, "callback"    # Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;

    .line 231
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    if-nez v2, :cond_0

    .line 232
    return-void

    .line 234
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getPhoneId()I

    move-result v3

    .line 235
    .local v3, "phoneId":I
    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    .line 236
    .local v4, "subId":I
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/gba/GbaUtility;->getNafId(Ljava/lang/String;)[B

    move-result-object v15

    .line 237
    .local v15, "nafId":[B
    iget-object v5, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_1

    .line 238
    invoke-interface {v2, v7, v7, v6, v1}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 239
    iget-object v5, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v5

    iput-object v5, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 240
    return-void

    .line 242
    :cond_1
    invoke-interface {v5, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v16

    .line 243
    .local v16, "isGbaSupported":Z
    const-string/jumbo v5, "uicc"

    move-object/from16 v14, p2

    invoke-virtual {v14, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_2

    if-eqz v16, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    move v13, v5

    .line 245
    .local v13, "isGbaU":Z
    if-eqz v13, :cond_3

    .line 246
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "gba-u"

    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v12, v5

    .local v5, "gbaType":[B
    goto :goto_1

    .line 248
    .end local v5    # "gbaType":[B
    :cond_3
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v9, "gba-me"

    invoke-virtual {v9, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    move-object v12, v5

    .line 251
    .local v12, "gbaType":[B
    :goto_1
    if-eqz v15, :cond_13

    if-nez v12, :cond_4

    move-object/from16 v25, v12

    move/from16 v26, v13

    goto/16 :goto_9

    .line 256
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getIpVersion()I

    move-result v5

    const/4 v9, 0x3

    const-string v10, "Expired"

    const-string v11, "B-TID"

    if-ne v5, v9, :cond_7

    .line 257
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getDns()Lcom/squareup/okhttp/Dns;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/helper/httpclient/DnsController;

    .line 258
    .local v5, "dns":Lcom/sec/internal/helper/httpclient/DnsController;
    invoke-virtual {v5}, Lcom/sec/internal/helper/httpclient/DnsController;->getRetryCounter()I

    move-result v9

    if-nez v9, :cond_6

    .line 259
    iget-object v9, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    invoke-virtual {v9, v15, v12, v3}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v9

    .line 260
    .local v9, "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    if-eqz v9, :cond_6

    if-eqz v1, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 261
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 262
    :cond_5
    invoke-virtual {v9}, Lcom/sec/internal/ims/gba/GbaValue;->getBtid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Lcom/sec/internal/ims/gba/GbaValue;->getValue()[B

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/StrUtil;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7, v13, v1}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 264
    return-void

    .line 267
    .end local v5    # "dns":Lcom/sec/internal/helper/httpclient/DnsController;
    .end local v9    # "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    :cond_6
    goto :goto_2

    .line 268
    :cond_7
    iget-object v5, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    invoke-virtual {v5, v15, v12, v3}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v5

    .line 269
    .local v5, "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    if-eqz v5, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 270
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 271
    :cond_8
    invoke-virtual {v5}, Lcom/sec/internal/ims/gba/GbaValue;->getBtid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/sec/internal/ims/gba/GbaValue;->getValue()[B

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/helper/StrUtil;->convertHexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7, v13, v1}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 272
    return-void

    .line 276
    .end local v5    # "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    :cond_9
    :goto_2
    sget-object v5, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "GBA: NO GBA information, need send BSF request"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v5, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getBsfUrl()Ljava/lang/String;

    move-result-object v18

    .line 284
    .local v18, "bsfServer":Ljava/lang/String;
    iget-object v5, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/16 v6, 0x50

    const-string v9, "bsf_port"

    invoke-interface {v5, v3, v9, v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v19

    .line 285
    .local v19, "bsfPort":I
    if-eqz v18, :cond_12

    if-gez v19, :cond_a

    move-object/from16 v25, v12

    move/from16 v26, v13

    goto/16 :goto_8

    .line 290
    :cond_a
    iget-object v5, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v5, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v20

    .line 291
    .local v20, "imei":Ljava/lang/String;
    iget-object v5, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v5, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "imDomain":Ljava/lang/String;
    iget-object v6, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v6, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimDomain(I)Ljava/lang/String;

    move-result-object v6

    .line 293
    .local v6, "realm":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getImpi(I)Ljava/lang/String;

    move-result-object v11

    .line 295
    .local v11, "impi":Ljava/lang/String;
    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v21

    .line 296
    .local v21, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v21, :cond_b

    const/16 v17, 0x0

    goto :goto_3

    :cond_b
    invoke-interface/range {v21 .. v21}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v7

    move/from16 v17, v7

    .line 297
    .local v17, "hasIsim":Z
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    if-nez v17, :cond_d

    .line 298
    :cond_c
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 299
    const/4 v7, 0x2

    const-string v9, "@"

    invoke-virtual {v11, v9, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    aget-object v5, v7, v8

    move-object/from16 v22, v5

    goto :goto_4

    .line 303
    :cond_d
    move-object/from16 v22, v5

    .end local v5    # "imDomain":Ljava/lang/String;
    .local v22, "imDomain":Ljava/lang/String;
    :goto_4
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/gba/GbaServiceModule;->isRealmFromUsername(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 304
    move-object/from16 v6, v22

    move-object/from16 v23, v6

    goto :goto_6

    .line 305
    :cond_e
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "bsf"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_5

    :cond_f
    move-object/from16 v23, v6

    goto :goto_6

    .line 306
    :cond_10
    :goto_5
    move-object/from16 v6, v18

    move-object/from16 v23, v6

    .line 309
    .end local v6    # "realm":Ljava/lang/String;
    .local v23, "realm":Ljava/lang/String;
    :goto_6
    if-eqz v1, :cond_11

    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->getUseTls()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 310
    invoke-virtual/range {p3 .. p3}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getCipherSuite()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v10, p1

    invoke-virtual {v10, v5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuite(Ljava/lang/String;)V

    goto :goto_7

    .line 309
    :cond_11
    move-object/from16 v10, p1

    .line 313
    :goto_7
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v5

    move-object/from16 v6, v18

    move/from16 v7, v19

    move-object v8, v11

    move-object/from16 v9, v20

    move-object/from16 v10, v23

    move-object/from16 v24, v11

    .end local v11    # "impi":Ljava/lang/String;
    .local v24, "impi":Ljava/lang/String;
    move-object v11, v12

    move-object/from16 v25, v12

    .end local v12    # "gbaType":[B
    .local v25, "gbaType":[B
    move-object v12, v15

    move/from16 v26, v13

    .end local v13    # "isGbaU":Z
    .local v26, "isGbaU":Z
    move-object/from16 v14, p1

    invoke-virtual/range {v5 .. v14}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->sendBsfRequest(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BZLcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    .line 314
    return-void

    .line 285
    .end local v17    # "hasIsim":Z
    .end local v20    # "imei":Ljava/lang/String;
    .end local v21    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .end local v22    # "imDomain":Ljava/lang/String;
    .end local v23    # "realm":Ljava/lang/String;
    .end local v24    # "impi":Ljava/lang/String;
    .end local v25    # "gbaType":[B
    .end local v26    # "isGbaU":Z
    .restart local v12    # "gbaType":[B
    .restart local v13    # "isGbaU":Z
    :cond_12
    move-object/from16 v25, v12

    move/from16 v26, v13

    .line 286
    .end local v12    # "gbaType":[B
    .end local v13    # "isGbaU":Z
    .restart local v25    # "gbaType":[B
    .restart local v26    # "isGbaU":Z
    :goto_8
    const/4 v5, 0x0

    invoke-interface {v2, v7, v7, v5, v1}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 287
    return-void

    .line 251
    .end local v18    # "bsfServer":Ljava/lang/String;
    .end local v19    # "bsfPort":I
    .end local v25    # "gbaType":[B
    .end local v26    # "isGbaU":Z
    .restart local v12    # "gbaType":[B
    .restart local v13    # "isGbaU":Z
    :cond_13
    move-object/from16 v25, v12

    move/from16 v26, v13

    .line 252
    .end local v12    # "gbaType":[B
    .end local v13    # "isGbaU":Z
    .restart local v25    # "gbaType":[B
    .restart local v26    # "isGbaU":Z
    :goto_9
    move/from16 v5, v26

    .end local v26    # "isGbaU":Z
    .local v5, "isGbaU":Z
    invoke-interface {v2, v7, v7, v5, v1}, Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;->onComplete(Ljava/lang/String;Ljava/lang/String;ZLcom/sec/internal/helper/httpclient/HttpResponseParams;)V

    .line 253
    return-void
.end method

.method public getBtidFromSim()Ljava/lang/String;
    .locals 4

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "btid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getBtid()Ljava/lang/String;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBtid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-object v0
.end method

.method public getGbaCallbacks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/gba/IGbaCallback;",
            ">;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaCallbacks:Ljava/util/List;

    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    return-object v0

    .line 210
    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "imei":Ljava/lang/String;
    return-object v0
.end method

.method public getImpi(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .line 189
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 190
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const-string v1, ""

    .line 192
    .local v1, "impi":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 193
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object v1

    .line 196
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object v1

    .line 201
    :cond_1
    return-object v1
.end method

.method public getKeyLifetime()Ljava/lang/String;
    .locals 2

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "keyLifeTime":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getKeyLifetime()Ljava/lang/String;

    move-result-object v0

    .line 184
    return-object v0
.end method

.method public getNafExternalKeyBase64Decoded(I[B[B)Ljava/lang/String;
    .locals 9
    .param p1, "subId"    # I
    .param p2, "gbaType"    # [B
    .param p3, "nafId"    # [B

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return-object v0

    .line 122
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNafExternalKeyBase64Decoded gbaType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nafId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "response":Ljava/lang/String;
    const/4 v1, 0x0

    .line 126
    .local v1, "base64response":Ljava/lang/String;
    invoke-static {p3}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "challenge":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getGbaKeyResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_1

    .line 131
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Hex;->decodeHex([C)[B

    move-result-object v3

    sput-object v3, Lcom/sec/internal/ims/gba/GbaServiceModule;->gbaKey:[B
    :try_end_0
    .catch Lorg/apache/commons/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v3

    .line 133
    .local v3, "e":Lorg/apache/commons/codec/DecoderException;
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecoderException thrown "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .end local v3    # "e":Lorg/apache/commons/codec/DecoderException;
    :cond_1
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/gba/GbaServiceModule;->gbaKey:[B

    if-eqz v3, :cond_2

    .line 138
    sget-object v3, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNafExternalKeyBase64Decoded string : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/ims/gba/GbaServiceModule;->gbaKey:[B

    invoke-static {v5}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    sget-object v3, Lcom/sec/internal/ims/gba/GbaServiceModule;->gbaKey:[B

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/gba/GbaServiceModule;->parseResKeyFromIsimResponse([B)Ljava/lang/String;

    move-result-object v1

    .line 142
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    if-eqz v3, :cond_3

    .line 143
    sget-object v6, Lcom/sec/internal/ims/gba/GbaServiceModule;->gbaKey:[B

    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getKeyLifetime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getBtidFromSim()Ljava/lang/String;

    move-result-object v8

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/gba/Gba;->storeGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_3
    return-object v1
.end method

.method public getPassword(Ljava/lang/String;ZI)Lcom/sec/internal/ims/gba/params/GbaData;
    .locals 15
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "isGbaUiccSupported"    # Z
    .param p3, "phoneId"    # I

    .line 593
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/gba/GbaServiceModule;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 594
    .local v1, "randAutn":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 597
    .local v2, "challenge":Ljava/lang/String;
    const/4 v3, 0x0

    if-eqz p2, :cond_0

    .line 598
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    move-object v4, p0

    invoke-direct {p0, v0, v2}, Lcom/sec/internal/ims/gba/GbaServiceModule;->getIsimResponse(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v0, "isimRes":Ljava/lang/String;
    goto :goto_0

    .line 600
    .end local v0    # "isimRes":Ljava/lang/String;
    :cond_0
    move-object v4, p0

    invoke-static/range {p3 .. p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 601
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-nez v0, :cond_1

    move-object v5, v3

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 604
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .local v5, "isimRes":Ljava/lang/String;
    :goto_0
    if-nez v5, :cond_2

    .line 605
    return-object v3

    .line 608
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "dc"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    new-instance v0, Lcom/sec/internal/ims/gba/params/GbaData;

    const-string v3, ""

    invoke-direct {v0, v5, v3, v3}, Lcom/sec/internal/ims/gba/params/GbaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 612
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "db"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 613
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPassword(): wrong IsimResponse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    return-object v3

    .line 617
    :cond_4
    const/4 v6, 0x0

    .line 619
    .local v6, "simResponse":[B
    :try_start_0
    invoke-static {v5}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 620
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 622
    :goto_2
    if-nez v6, :cond_5

    .line 623
    return-object v3

    .line 625
    :cond_5
    const/4 v0, 0x1

    .line 626
    .local v0, "i":I
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-byte v0, v6, v0

    .line 627
    .local v0, "resLength":I
    new-instance v7, Ljava/lang/String;

    add-int v8, v3, v0

    invoke-static {v6, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 628
    const-string v9, "CP1252"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 629
    .local v7, "password":Ljava/lang/String;
    add-int/2addr v3, v0

    .line 630
    sget-object v8, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getPassword(): password = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v8, 0x0

    .line 632
    .local v8, "encrKey":Ljava/lang/String;
    const/4 v9, 0x0

    .line 633
    .local v9, "authKey":Ljava/lang/String;
    if-nez p2, :cond_7

    .line 634
    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .local v10, "i":I
    aget-byte v3, v6, v3

    .line 637
    .local v3, "encrLen":I
    mul-int/lit8 v11, v0, 0x2

    add-int/lit8 v11, v11, 0x4

    add-int/lit8 v11, v11, 0x2

    .line 638
    .local v11, "start_in":I
    mul-int/lit8 v12, v3, 0x2

    add-int/2addr v12, v11

    .line 640
    .local v12, "end_in":I
    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 641
    add-int/2addr v10, v3

    .line 643
    aget-byte v13, v6, v10

    .line 644
    .local v13, "authLen":I
    if-gez v13, :cond_6

    .line 645
    rsub-int v13, v13, 0x100

    .line 648
    :cond_6
    add-int/lit8 v11, v12, 0x2

    .line 649
    mul-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v11

    .line 650
    .end local v12    # "end_in":I
    .local v14, "end_in":I
    invoke-virtual {v5, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move v3, v10

    .line 653
    .end local v10    # "i":I
    .end local v11    # "start_in":I
    .end local v13    # "authLen":I
    .end local v14    # "end_in":I
    .local v3, "i":I
    :cond_7
    new-instance v10, Lcom/sec/internal/ims/gba/params/GbaData;

    invoke-direct {v10, v7, v8, v9}, Lcom/sec/internal/ims/gba/params/GbaData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .local v10, "data":Lcom/sec/internal/ims/gba/params/GbaData;
    move/from16 v11, p3

    invoke-virtual {v10, v11}, Lcom/sec/internal/ims/gba/params/GbaData;->setPhoneId(I)V

    .line 656
    return-object v10
.end method

.method public initGbaAccessibleObj()Z
    .locals 1

    .line 220
    new-instance v0, Lcom/sec/internal/ims/gba/Gba;

    invoke-direct {v0}, Lcom/sec/internal/ims/gba/Gba;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mLastDigestInfoMap:Ljava/util/HashMap;

    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public isGbaUiccSupported(I)Z
    .locals 1
    .param p1, "subId"    # I

    .line 227
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v0

    return v0
.end method

.method public isValidGbaKey(ILjava/lang/String;)Z
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "nafUri"    # Ljava/lang/String;

    .line 423
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 424
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Invalid URI"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return v1

    .line 427
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 428
    .local v0, "nafId":[B
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v4, "gba-me"

    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-virtual {v2, v0, v3, p1}, Lcom/sec/internal/ims/gba/Gba;->getGbaValue([B[BI)Lcom/sec/internal/ims/gba/GbaValue;

    move-result-object v2

    .line 429
    .local v2, "gbaValue":Lcom/sec/internal/ims/gba/GbaValue;
    if-nez v2, :cond_1

    .line 430
    return v1

    .line 432
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public declared-synchronized notifyOnGbaError(ILjava/lang/String;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "error"    # Ljava/lang/String;

    monitor-enter p0

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 470
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 471
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/gba/IGbaEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .local v2, "listener":Lcom/sec/ims/gba/IGbaEventListener;
    :try_start_1
    invoke-interface {v2, p2}, Lcom/sec/ims/gba/IGbaEventListener;->onGbaEventFail(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    goto :goto_1

    .line 474
    .end local p0    # "this":Lcom/sec/internal/ims/gba/GbaServiceModule;
    :catch_0
    move-exception v3

    .line 475
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "failed notify Gba event!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    nop

    .line 470
    .end local v2    # "listener":Lcom/sec/ims/gba/IGbaEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 481
    .end local v0    # "length":I
    :cond_1
    monitor-exit p0

    return-void

    .line 467
    .end local p1    # "phoneId":I
    .end local p2    # "error":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyOnGbaEvent(ILjava/lang/String;)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "wwwHeader"    # Ljava/lang/String;

    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 454
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 455
    iget-object v2, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/gba/IGbaEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    .local v2, "listener":Lcom/sec/ims/gba/IGbaEventListener;
    :try_start_1
    invoke-interface {v2, p2}, Lcom/sec/ims/gba/IGbaEventListener;->onGbaEventSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    goto :goto_1

    .line 458
    .end local p0    # "this":Lcom/sec/internal/ims/gba/GbaServiceModule;
    :catch_0
    move-exception v3

    .line 459
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "failed notify Gba event!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    nop

    .line 454
    .end local v2    # "listener":Lcom/sec/ims/gba/IGbaEventListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 465
    .end local v0    # "length":I
    :cond_1
    monitor-exit p0

    return-void

    .line 451
    .end local p1    # "phoneId":I
    .end local p2    # "wwwHeader":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public parseResKeyFromIsimResponse([B)Ljava/lang/String;
    .locals 7
    .param p1, "result"    # [B

    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "responsekey":[B
    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "response":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 153
    sget-object v2, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AkaResponse for GBA as received from sim: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "authErrorCheck":Ljava/lang/String;
    const-string v4, "db"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 156
    const/4 v4, 0x4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->resLen:I

    .line 157
    if-lez v4, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Illegal response recieved from iSim"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_1
    :goto_0
    iget v4, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->resLen:I

    new-array v0, v4, [B

    .line 163
    invoke-static {p1, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "passwordStr":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AkaResponse for GBA to be sent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " base64 decode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-object v3

    .line 168
    .end local v2    # "authErrorCheck":Ljava/lang/String;
    .end local v3    # "passwordStr":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method public registerGbaEventListener(ILcom/sec/ims/gba/IGbaEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/gba/IGbaEventListener;

    .line 436
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerGbaEventListener to phone#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 442
    return-void
.end method

.method public resetGbaKey(Ljava/lang/String;I)V
    .locals 7
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 485
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "realms":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v2, v0, v1

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 489
    aget-object v2, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 490
    .local v2, "token":[Ljava/lang/String;
    aget-object v3, v2, v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 491
    .local v2, "nafId":[B
    goto :goto_0

    .line 492
    .end local v2    # "nafId":[B
    :cond_0
    aget-object v2, v0, v1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 495
    .restart local v2    # "nafId":[B
    :goto_0
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    .line 496
    .local v3, "subId":I
    iget-object v5, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v5, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->isGbaSupported(I)Z

    move-result v5

    .line 497
    .local v5, "isGbaSupported":Z
    const-string/jumbo v6, "uicc"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    .line 499
    .local v1, "isGbaU":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 500
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v6, "gba-u"

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .local v4, "gbaType":[B
    goto :goto_2

    .line 502
    .end local v4    # "gbaType":[B
    :cond_2
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v6, "gba-me"

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 504
    .restart local v4    # "gbaType":[B
    :goto_2
    iget-object v6, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGba:Lcom/sec/internal/ims/gba/Gba;

    invoke-virtual {v6, v2, v4, p2}, Lcom/sec/internal/ims/gba/Gba;->removeGbaKey([B[BI)V

    .line 505
    return-void
.end method

.method public storeGbaBootstrapParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rand :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " btid :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " keyLifetime :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x1

    const/16 v1, 0x11

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 101
    .local v0, "bRand":[B
    iget-object v1, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, v0, p2, p3}, Lcom/sec/internal/helper/os/ITelephonyManager;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public storeGbaDataAndGenerateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[BLcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;
    .locals 12
    .param p1, "btid"    # Ljava/lang/String;
    .param p2, "lifetime"    # Ljava/lang/String;
    .param p3, "nonce"    # Ljava/lang/String;
    .param p4, "cipherSuite"    # Ljava/lang/String;
    .param p5, "gbaType"    # [B
    .param p6, "nafId"    # [B
    .param p7, "keys"    # Lcom/sec/internal/ims/gba/params/GbaData;
    .param p8, "isTLS"    # Z
    .param p9, "phoneId"    # I

    .line 510
    invoke-static {p3}, Lcom/sec/internal/ims/gba/GbaServiceModule;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "randAutn":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/sec/internal/helper/StrUtil;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 512
    .local v1, "rand":[B
    move-object v2, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object v5, v1

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v2 .. v11}, Lcom/sec/internal/ims/gba/GbaServiceModule;->generateGbaKey([B[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/gba/params/GbaData;ZI)Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "gbaKey":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "storeGbaDataAndGenerateKey(): base64 gbaKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    return-object v2
.end method

.method public transmitLogicChannel(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .param p1, "subId"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ChalData"    # Ljava/lang/String;
    .param p4, "ChalDataLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    move-object v0, p0

    move v10, p1

    const/4 v11, 0x0

    .line 107
    .local v11, "response":Ljava/lang/String;
    const/4 v1, -0x1

    .line 108
    .local v1, "channel":I
    iget-object v2, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    move-object/from16 v12, p2

    invoke-interface {v2, p1, v12}, Lcom/sec/internal/helper/os/ITelephonyManager;->iccOpenLogicalChannelAndGetChannel(ILjava/lang/String;)I

    move-result v13

    .line 109
    .end local v1    # "channel":I
    .local v13, "channel":I
    iget-object v1, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v4, 0x2

    const/16 v5, 0x88

    const/4 v6, 0x0

    const/16 v7, 0x84

    move v2, p1

    move v3, v13

    move/from16 v8, p4

    move-object/from16 v9, p3

    invoke-interface/range {v1 .. v9}, Lcom/sec/internal/helper/os/ITelephonyManager;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .end local v11    # "response":Ljava/lang/String;
    .local v1, "response":Ljava/lang/String;
    iget-object v2, v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, p1, v13}, Lcom/sec/internal/helper/os/ITelephonyManager;->iccCloseLogicalChannel(II)Z

    .line 113
    return-object v1
.end method

.method public unregisterGbaEventListener(ILcom/sec/ims/gba/IGbaEventListener;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/gba/IGbaEventListener;

    .line 445
    sget-object v0, Lcom/sec/internal/ims/gba/GbaServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterGbaEventListener to phone#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/gba/GbaServiceModule;->mGbaEventListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 449
    :cond_0
    return-void
.end method
