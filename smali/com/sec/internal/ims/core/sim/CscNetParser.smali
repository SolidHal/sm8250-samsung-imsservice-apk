.class Lcom/sec/internal/ims/core/sim/CscNetParser;
.super Ljava/lang/Object;
.source "MnoMap.java"


# static fields
.field private static final CUSTOMER_CSC_FILE_NAME:Ljava/lang/String; = "/customer.xml"

.field private static final CUSTOMER_CSC_FILE_PATH:Ljava/lang/String; = "/system/csc"

.field private static final LOG_TAG:Ljava/lang/String; = "CscNetParser"

.field private static final NETWORK_INFO_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.NetworkInfo"

.field private static final PERSIST_OMCNW_PATH:Ljava/lang/String; = "persist.sys.omcnw_path"

.field private static final PERSIST_OMCNW_PATH2:Ljava/lang/String; = "persist.sys.omcnw_path2"

.field private static final PERSIST_OMC_PATH:Ljava/lang/String; = "persist.sys.omc_path"


# instance fields
.field private mFileInputStream:Ljava/io/FileInputStream;

.field public mNetworkInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/CscNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    .line 340
    iput p1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    .line 341
    return-void
.end method

.method private closeFileInputStream()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 526
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 530
    :goto_0
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 531
    goto :goto_2

    .line 530
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 530
    :goto_1
    iput-object v1, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 531
    throw v0

    .line 533
    :cond_0
    :goto_2
    return-void
.end method

.method private getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 12

    .line 465
    iget v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    const-string v1, "CscNetParser"

    const-string v2, "getCscCustomerParser:"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 467
    const-string/jumbo v0, "persist.sys.omc_path"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "omcPath":Ljava/lang/String;
    const-string v2, ""

    .line 470
    .local v2, "omcnwPath":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getOmcVersion()D

    move-result-wide v3

    .line 471
    .local v3, "omcVer":D
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OMC version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpl-double v5, v3, v5

    const/4 v6, 0x1

    const-string/jumbo v7, "persist.sys.omcnw_path"

    if-ltz v5, :cond_1

    .line 474
    iget v5, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    if-ne v5, v6, :cond_0

    .line 475
    const-string/jumbo v5, "persist.sys.omcnw_path2"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 477
    :cond_0
    invoke-static {v7, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 480
    :cond_1
    invoke-static {v7, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 484
    :goto_0
    iget v5, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 485
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v7, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    const/4 v8, 0x0

    if-ne v5, v7, :cond_2

    .line 486
    return-object v8

    .line 489
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 490
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/customer.xml"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "customerPath":Ljava/lang/String;
    goto :goto_1

    .line 492
    .end local v7    # "customerPath":Ljava/lang/String;
    :cond_3
    const-string v7, "/system/csc/customer.xml"

    .line 494
    .restart local v7    # "customerPath":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "customerPath = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 497
    .local v9, "customer":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 498
    const-string v6, "customer.xml file does not exists"

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return-object v8

    .line 502
    :cond_4
    const/4 v1, 0x0

    .line 503
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    .line 506
    .local v10, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    move-object v10, v11

    .line 507
    invoke-virtual {v10, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 508
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    move-object v1, v6

    .line 509
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mFileInputStream:Ljava/io/FileInputStream;

    .line 510
    invoke-interface {v1, v6, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 515
    :catch_0
    move-exception v6

    .line 516
    .local v6, "e":Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    .line 517
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 518
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    goto :goto_3

    .line 511
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    .line 512
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v1, 0x0

    .line 513
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 514
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    .line 519
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_2
    nop

    .line 520
    :goto_3
    return-object v1
.end method

.method private parseNetworkInfo()V
    .locals 24

    .line 349
    move-object/from16 v1, p0

    const-string v2, ""

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->getCscCustomerParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 351
    .local v3, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "CscNetParser"

    if-nez v3, :cond_0

    .line 352
    const-string v0, "XmlPullParser is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    .line 354
    return-void

    .line 357
    :cond_0
    const-string v0, "CustomerData.GeneralInfo.NetworkInfo"

    invoke-static {v3, v0}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 358
    const-string v0, "can not find CustomerData.GeneralInfo.NetworkInfo"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    .line 360
    return-void

    .line 365
    :cond_1
    move-object v0, v2

    .line 366
    .local v0, "name":Ljava/lang/String;
    move-object v5, v2

    .line 367
    .local v5, "mccmnc":Ljava/lang/String;
    move-object v6, v2

    .line 368
    .local v6, "networkName":Ljava/lang/String;
    move-object v7, v2

    .line 369
    .local v7, "subset":Ljava/lang/String;
    const/4 v8, 0x0

    .line 370
    .local v8, "hexadecimalType":Z
    move-object v9, v2

    .line 371
    .local v9, "gid1":Ljava/lang/String;
    move-object v10, v2

    .line 372
    .local v10, "gid2":Ljava/lang/String;
    move-object v11, v2

    move-object v12, v5

    move-object v13, v6

    move-object v14, v7

    move v15, v8

    move-object v5, v0

    move-object/from16 v23, v11

    move-object v11, v10

    move-object/from16 v10, v23

    .line 373
    .end local v0    # "name":Ljava/lang/String;
    .end local v6    # "networkName":Ljava/lang/String;
    .end local v7    # "subset":Ljava/lang/String;
    .end local v8    # "hexadecimalType":Z
    .local v5, "name":Ljava/lang/String;
    .local v10, "spname":Ljava/lang/String;
    .local v11, "gid2":Ljava/lang/String;
    .local v12, "mccmnc":Ljava/lang/String;
    .local v13, "networkName":Ljava/lang/String;
    .local v14, "subset":Ljava/lang/String;
    .local v15, "hexadecimalType":Z
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "event":I
    const/4 v6, 0x1

    if-eq v0, v6, :cond_1d

    .line 374
    const/4 v0, 0x2

    if-ne v8, v0, :cond_e

    .line 375
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 376
    const-string v0, "NetworkName"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x4

    if-eqz v0, :cond_4

    .line 377
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_3

    goto :goto_1

    .line 378
    :cond_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    .line 379
    :cond_4
    const-string v0, "MCCMNC"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 380
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_5

    goto :goto_2

    .line 381
    :cond_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 382
    :cond_6
    const-string v0, "SPCode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 383
    :goto_3
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_7

    goto :goto_3

    .line 384
    :cond_7
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    goto :goto_0

    .line 385
    :cond_8
    const-string v0, "CodeType"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 386
    :goto_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_9

    goto :goto_4

    .line 387
    :cond_9
    const-string v0, "HEX"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 388
    const/4 v15, 0x1

    goto :goto_0

    .line 390
    :cond_a
    const-string v0, "SubsetCode"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 391
    :goto_5
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_b

    goto :goto_5

    .line 392
    :cond_b
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto/16 :goto_0

    .line 393
    :cond_c
    const-string v0, "Spname"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    :goto_6
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v6, :cond_d

    goto :goto_6

    .line 395
    :cond_d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto/16 :goto_0

    .line 397
    :cond_e
    const/4 v0, 0x3

    if-ne v8, v0, :cond_1b

    .line 398
    const-string v0, "NetworkInfo"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1a

    .line 399
    if-nez v15, :cond_f

    .line 401
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 402
    .local v0, "num":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    .end local v0    # "num":I
    .end local v9    # "gid1":Ljava/lang/String;
    .local v6, "gid1":Ljava/lang/String;
    move-object v0, v6

    goto :goto_7

    .line 403
    .end local v6    # "gid1":Ljava/lang/String;
    .restart local v9    # "gid1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "ne":Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v6, "invalid NetworkInfo have CodeType, but no gid1"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object v6, v2

    move-object v0, v6

    .end local v9    # "gid1":Ljava/lang/String;
    .restart local v6    # "gid1":Ljava/lang/String;
    goto :goto_7

    .line 399
    .end local v0    # "ne":Ljava/lang/NumberFormatException;
    .end local v6    # "gid1":Ljava/lang/String;
    .restart local v9    # "gid1":Ljava/lang/String;
    :cond_f
    move-object v0, v9

    .line 409
    .end local v9    # "gid1":Ljava/lang/String;
    .local v0, "gid1":Ljava/lang/String;
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mccmnc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", networkName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", subset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", gid1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", gid2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", spname: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 412
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_b

    .line 416
    :cond_10
    const-string v6, "00101"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "001001"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    const-string v6, "001010"

    .line 417
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "00101f"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    const-string v6, "99999"

    .line 418
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    const-string v6, "45001"

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 419
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_b

    .line 422
    :cond_11
    const-string v6, "GCF"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 423
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    goto/16 :goto_b

    .line 426
    :cond_12
    const/4 v6, 0x0

    .line 427
    .local v6, "index":I
    iget-object v7, v1, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v9, v7

    .line 428
    .local v9, "netInfoSize":I
    const/4 v7, 0x0

    move-object/from16 v23, v7

    move v7, v6

    move-object/from16 v6, v23

    .line 429
    .local v6, "network":Lcom/sec/internal/ims/core/sim/CscNetwork;
    .local v7, "index":I
    :goto_8
    if-ge v7, v9, :cond_14

    .line 430
    move-object/from16 v16, v4

    iget-object v4, v1, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/sim/CscNetwork;

    move-object v6, v4

    .line 431
    iget-object v4, v6, Lcom/sec/internal/ims/core/sim/CscNetwork;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 433
    move-object v4, v6

    goto :goto_9

    .line 429
    :cond_13
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v4, v16

    goto :goto_8

    :cond_14
    move-object/from16 v16, v4

    move-object v4, v6

    .line 437
    .end local v6    # "network":Lcom/sec/internal/ims/core/sim/CscNetwork;
    .local v4, "network":Lcom/sec/internal/ims/core/sim/CscNetwork;
    :goto_9
    if-ne v7, v9, :cond_15

    .line 439
    new-instance v6, Lcom/sec/internal/ims/core/sim/CscNetwork;

    invoke-direct {v6, v13}, Lcom/sec/internal/ims/core/sim/CscNetwork;-><init>(Ljava/lang/String;)V

    .line 440
    .local v6, "newNetwork":Lcom/sec/internal/ims/core/sim/CscNetwork;
    move-object/from16 v17, v6

    .end local v6    # "newNetwork":Lcom/sec/internal/ims/core/sim/CscNetwork;
    .local v17, "newNetwork":Lcom/sec/internal/ims/core/sim/CscNetwork;
    move-object/from16 v18, v5

    move v5, v7

    .end local v7    # "index":I
    .local v5, "index":I
    .local v18, "name":Ljava/lang/String;
    move-object v7, v12

    move/from16 v19, v8

    .end local v8    # "event":I
    .local v19, "event":I
    move-object v8, v14

    move/from16 v20, v9

    .end local v9    # "netInfoSize":I
    .local v20, "netInfoSize":I
    move-object v9, v0

    move-object/from16 v21, v10

    .end local v10    # "spname":Ljava/lang/String;
    .local v21, "spname":Ljava/lang/String;
    move-object v10, v11

    move-object/from16 v22, v11

    .end local v11    # "gid2":Ljava/lang/String;
    .local v22, "gid2":Ljava/lang/String;
    move-object/from16 v11, v21

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/core/sim/CscNetwork;->addIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v6, v1, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    move-object/from16 v7, v17

    .end local v17    # "newNetwork":Lcom/sec/internal/ims/core/sim/CscNetwork;
    .local v7, "newNetwork":Lcom/sec/internal/ims/core/sim/CscNetwork;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    nop

    .end local v7    # "newNetwork":Lcom/sec/internal/ims/core/sim/CscNetwork;
    goto :goto_a

    .line 443
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "event":I
    .end local v20    # "netInfoSize":I
    .end local v21    # "spname":Ljava/lang/String;
    .end local v22    # "gid2":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    .local v7, "index":I
    .restart local v8    # "event":I
    .restart local v9    # "netInfoSize":I
    .restart local v10    # "spname":Ljava/lang/String;
    .restart local v11    # "gid2":Ljava/lang/String;
    :cond_15
    move-object/from16 v18, v5

    move v5, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .end local v7    # "index":I
    .end local v8    # "event":I
    .end local v9    # "netInfoSize":I
    .end local v10    # "spname":Ljava/lang/String;
    .end local v11    # "gid2":Ljava/lang/String;
    .local v5, "index":I
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "event":I
    .restart local v20    # "netInfoSize":I
    .restart local v21    # "spname":Ljava/lang/String;
    .restart local v22    # "gid2":Ljava/lang/String;
    move-object v6, v4

    move-object v7, v12

    move-object v8, v14

    move-object v9, v0

    move-object/from16 v10, v22

    move-object/from16 v11, v21

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/core/sim/CscNetwork;->addIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v6, v1, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 445
    iget-object v6, v1, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    :goto_a
    move-object v10, v2

    .end local v21    # "spname":Ljava/lang/String;
    .restart local v10    # "spname":Ljava/lang/String;
    move-object v11, v2

    .end local v22    # "gid2":Ljava/lang/String;
    .restart local v11    # "gid2":Ljava/lang/String;
    move-object v9, v2

    .end local v0    # "gid1":Ljava/lang/String;
    .local v9, "gid1":Ljava/lang/String;
    move-object v14, v2

    move-object v12, v2

    move-object v13, v2

    .line 449
    const/4 v15, 0x0

    .line 450
    .end local v4    # "network":Lcom/sec/internal/ims/core/sim/CscNetwork;
    .end local v5    # "index":I
    .end local v20    # "netInfoSize":I
    move-object/from16 v4, v16

    move-object/from16 v5, v18

    goto/16 :goto_0

    .line 418
    .end local v9    # "gid1":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "event":I
    .restart local v0    # "gid1":Ljava/lang/String;
    .local v5, "name":Ljava/lang/String;
    .restart local v8    # "event":I
    :cond_16
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "event":I
    .end local v10    # "spname":Ljava/lang/String;
    .end local v11    # "gid2":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "event":I
    .restart local v21    # "spname":Ljava/lang/String;
    .restart local v22    # "gid2":Ljava/lang/String;
    goto :goto_b

    .line 417
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "event":I
    .end local v21    # "spname":Ljava/lang/String;
    .end local v22    # "gid2":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "event":I
    .restart local v10    # "spname":Ljava/lang/String;
    .restart local v11    # "gid2":Ljava/lang/String;
    :cond_17
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "event":I
    .end local v10    # "spname":Ljava/lang/String;
    .end local v11    # "gid2":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "event":I
    .restart local v21    # "spname":Ljava/lang/String;
    .restart local v22    # "gid2":Ljava/lang/String;
    goto :goto_b

    .line 416
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "event":I
    .end local v21    # "spname":Ljava/lang/String;
    .end local v22    # "gid2":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "event":I
    .restart local v10    # "spname":Ljava/lang/String;
    .restart local v11    # "gid2":Ljava/lang/String;
    :cond_18
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "event":I
    .end local v10    # "spname":Ljava/lang/String;
    .end local v11    # "gid2":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "event":I
    .restart local v21    # "spname":Ljava/lang/String;
    .restart local v22    # "gid2":Ljava/lang/String;
    goto :goto_b

    .line 411
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "event":I
    .end local v21    # "spname":Ljava/lang/String;
    .end local v22    # "gid2":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "event":I
    .restart local v10    # "spname":Ljava/lang/String;
    .restart local v11    # "gid2":Ljava/lang/String;
    :cond_19
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .line 373
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "event":I
    .end local v10    # "spname":Ljava/lang/String;
    .end local v11    # "gid2":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v21    # "spname":Ljava/lang/String;
    .restart local v22    # "gid2":Ljava/lang/String;
    :goto_b
    move-object v9, v0

    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    goto/16 :goto_0

    .line 450
    .end local v0    # "gid1":Ljava/lang/String;
    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "spname":Ljava/lang/String;
    .end local v22    # "gid2":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "event":I
    .restart local v9    # "gid1":Ljava/lang/String;
    .restart local v10    # "spname":Ljava/lang/String;
    .restart local v11    # "gid2":Ljava/lang/String;
    :cond_1a
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "event":I
    .end local v10    # "spname":Ljava/lang/String;
    .end local v11    # "gid2":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "event":I
    .restart local v21    # "spname":Ljava/lang/String;
    .restart local v22    # "gid2":Ljava/lang/String;
    const-string v0, "GeneralInfo"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1c

    .line 451
    goto :goto_c

    .line 397
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "event":I
    .end local v21    # "spname":Ljava/lang/String;
    .end local v22    # "gid2":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "event":I
    .restart local v10    # "spname":Ljava/lang/String;
    .restart local v11    # "gid2":Ljava/lang/String;
    :cond_1b
    move-object/from16 v16, v4

    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .line 373
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "event":I
    .end local v10    # "spname":Ljava/lang/String;
    .end local v11    # "gid2":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v21    # "spname":Ljava/lang/String;
    .restart local v22    # "gid2":Ljava/lang/String;
    :cond_1c
    move-object/from16 v4, v16

    move-object/from16 v5, v18

    move-object/from16 v10, v21

    move-object/from16 v11, v22

    goto/16 :goto_0

    .end local v18    # "name":Ljava/lang/String;
    .end local v21    # "spname":Ljava/lang/String;
    .end local v22    # "gid2":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "event":I
    .restart local v10    # "spname":Ljava/lang/String;
    .restart local v11    # "gid2":Ljava/lang/String;
    :cond_1d
    move-object/from16 v18, v5

    move/from16 v19, v8

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "event":I
    .end local v10    # "spname":Ljava/lang/String;
    .end local v11    # "gid2":Ljava/lang/String;
    .restart local v18    # "name":Ljava/lang/String;
    .restart local v19    # "event":I
    .restart local v21    # "spname":Ljava/lang/String;
    .restart local v22    # "gid2":Ljava/lang/String;
    goto :goto_c

    .line 457
    .end local v9    # "gid1":Ljava/lang/String;
    .end local v12    # "mccmnc":Ljava/lang/String;
    .end local v13    # "networkName":Ljava/lang/String;
    .end local v14    # "subset":Ljava/lang/String;
    .end local v15    # "hexadecimalType":Z
    .end local v18    # "name":Ljava/lang/String;
    .end local v19    # "event":I
    .end local v21    # "spname":Ljava/lang/String;
    .end local v22    # "gid2":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_c

    .line 455
    :catch_2
    move-exception v0

    .line 456
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 460
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    .line 461
    nop

    .line 462
    return-void

    .line 460
    :catchall_0
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->closeFileInputStream()V

    .line 461
    throw v0
.end method


# virtual methods
.method public getCscNetwokrInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/core/sim/CscNetwork;",
            ">;"
        }
    .end annotation

    .line 344
    invoke-direct {p0}, Lcom/sec/internal/ims/core/sim/CscNetParser;->parseNetworkInfo()V

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/CscNetParser;->mNetworkInfoList:Ljava/util/ArrayList;

    return-object v0
.end method
