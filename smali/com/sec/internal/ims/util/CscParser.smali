.class public Lcom/sec/internal/ims/util/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# static fields
.field private static final COUNTRY_ISO_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.CountryISO"

.field private static final CSC_EDITION_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.CSCEdition"

.field private static final CSC_SW_CONFIG_FILE_PATH:Ljava/lang/String; = "/system/SW_Configuration.xml"

.field private static final CUSTOMER_CSC_FILE_NAME:Ljava/lang/String; = "/customer.xml"

.field private static final CUSTOMER_CSC_FILE_PATH:Ljava/lang/String; = "/system/csc"

.field private static final IMSSETTING_STR_VERSION_PILOT:Ljava/lang/String; = "PILOT"

.field private static final IMSSETTING_VERSION_PATH:Ljava/lang/String; = "CustomerData.Settings.IMSSetting.Setting.Version"

.field private static final IMSSETTING_VERSION_PILOT:Ljava/lang/String; = "1.0"

.field private static final IMS_PATH:Ljava/lang/String; = "CustomerData.Settings.IMSSetting.NbSetting"

.field private static final KEY_CSC_EDITION:Ljava/lang/String; = "csc.key.edition"

.field private static final KEY_CSC_SALES_CODE:Ljava/lang/String; = "csc.key.salescode"

.field private static final KEY_CSC_VERSION:Ljava/lang/String; = "csc.key.version"

.field private static final KEY_OMC_VERSION:Ljava/lang/String; = "omc.key.version"

.field private static final LOG_TAG:Ljava/lang/String; = "CscParser"

.field private static final NETWORK_INFO_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.NetworkInfo"

.field private static final OMC_INFO_FILE_NAME:Ljava/lang/String; = "/omc.info"

.field private static final OMC_INFO_VERSION:Ljava/lang/String; = "version"

.field private static final PERSIST_OMCNW_PATH:Ljava/lang/String; = "persist.sys.omcnw_path"

.field private static final PERSIST_OMCNW_PATH2:Ljava/lang/String; = "persist.sys.omcnw_path2"

.field private static final PERSIST_OMC_PATH:Ljava/lang/String; = "persist.sys.omc_path"

.field private static final SALES_CODE_PATH:Ljava/lang/String; = "CustomerData.GeneralInfo.SalesCode"

.field private static final SW_CONFIG_CSCNAME:Ljava/lang/String; = "CSCName"

.field private static final SW_CONFIG_CSCVERSION:Ljava/lang/String; = "CSCVersion"

.field private static sCscChangeChecked:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/util/CscParser;->sCscChangeChecked:[Z

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static closeFileInputStream(Ljava/io/FileInputStream;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/FileInputStream;

    .line 124
    if-eqz p0, :cond_0

    .line 126
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 4
    .param p0, "stream"    # Ljava/io/FileInputStream;

    .line 101
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 102
    const-string v1, "CscParser"

    const-string v2, "no csc file"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-object v0

    .line 106
    :cond_0
    const/4 v1, 0x0

    .line 107
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v2, 0x0

    .line 110
    .local v2, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    move-object v2, v3

    .line 111
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 112
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    move-object v1, v3

    .line 113
    invoke-interface {v1, p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 117
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 120
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_0
    return-object v1
.end method

.method static getCscEdition(I)Ljava/lang/String;
    .locals 1
    .param p0, "simslot"    # I

    .line 134
    const-string v0, "CustomerData.GeneralInfo.CSCEdition"

    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/CscParser;->getFieldFromCsc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCscFile(I)Ljava/io/FileInputStream;
    .locals 7
    .param p0, "simslot"    # I

    .line 70
    const-string/jumbo v0, "persist.sys.omc_path"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "omcPath":Ljava/lang/String;
    const-string v1, ""

    .line 73
    .local v1, "omcNwPath":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getOmcVersion()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v4

    const-string/jumbo v3, "persist.sys.omcnw_path"

    if-ltz v2, :cond_1

    const-string/jumbo v2, "persist.radio.multisim.config"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "dsds"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    .line 75
    const-string/jumbo v2, "persist.sys.omcnw_path2"

    invoke-static {v2, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v3, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 80
    :cond_1
    invoke-static {v3, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/customer.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "customerPath":Ljava/lang/String;
    goto :goto_1

    .line 87
    .end local v2    # "customerPath":Ljava/lang/String;
    :cond_2
    const-string v2, "/system/csc/customer.xml"

    .line 90
    .restart local v2    # "customerPath":Ljava/lang/String;
    :goto_1
    const/4 v3, 0x0

    .line 92
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 95
    goto :goto_2

    .line 93
    :catch_0
    move-exception v4

    .line 94
    .local v4, "e":Ljava/io/FileNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CscParser"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-object v3
.end method

.method public static declared-synchronized getCscImsSetting(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 8
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "simslot"    # I

    const-class v0, Lcom/sec/internal/ims/util/CscParser;

    monitor-enter v0

    .line 595
    :try_start_0
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v7, 0x1

    move-object v1, p0

    move v6, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/util/CscParser;->getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;

    move-result-object v1

    .line 596
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v2

    .line 594
    .end local v1    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "operator":Ljava/lang/String;
    .end local p1    # "simslot":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getCscImsSetting(Ljava/util/List;I)Landroid/content/ContentValues;
    .locals 9
    .param p1, "simslot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .local p0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Lcom/sec/internal/ims/util/CscParser;

    monitor-enter v0

    .line 600
    const/4 v1, 0x0

    if-eqz p0, :cond_5

    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 604
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->getCscFile(I)Ljava/io/FileInputStream;

    move-result-object v2

    .line 605
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/sec/internal/ims/util/CscParser;->getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 607
    .local v3, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    if-nez v3, :cond_1

    .line 608
    const-string v4, "CscParser"

    const-string v5, "XmlPullParser is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-static {v2}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 610
    monitor-exit v0

    return-object v1

    .line 613
    :cond_1
    :try_start_1
    const-string v4, "CustomerData.Settings.IMSSetting.NbSetting"

    invoke-static {v3, v4}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 614
    const-string v4, "CscParser"

    const-string v5, "can not find CustomerData.Settings.IMSSetting.NbSetting"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {v2}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 616
    monitor-exit v0

    return-object v1

    .line 619
    :cond_2
    const/4 v4, 0x0

    .line 623
    .local v4, "setting":Landroid/content/ContentValues;
    :goto_0
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    move v6, v5

    .local v6, "event":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_4

    .line 624
    const/4 v5, 0x2

    if-ne v6, v5, :cond_3

    const-string v5, "Setting"

    .line 625
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 626
    invoke-static {v3}, Lcom/sec/internal/ims/util/CscParser;->getSetting(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;

    move-result-object v5

    move-object v4, v5

    .line 628
    const-string v5, "NetworkName"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 629
    const-string v5, "CscParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "csc ims setting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    nop

    .line 638
    :try_start_3
    invoke-static {v2}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 630
    monitor-exit v0

    return-object v4

    .line 633
    :cond_3
    :try_start_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 638
    :cond_4
    :try_start_5
    invoke-static {v2}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 639
    goto :goto_1

    .line 638
    .end local v6    # "event":I
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 635
    :catch_0
    move-exception v5

    .line 636
    .local v5, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "CscParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCscImsSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 638
    .end local v5    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v2}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 639
    nop

    .line 640
    :goto_1
    monitor-exit v0

    return-object v1

    .line 638
    :goto_2
    :try_start_8
    invoke-static {v2}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 639
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 599
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .end local v3    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "setting":Landroid/content/ContentValues;
    .end local p0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p1    # "simslot":I
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0

    .line 601
    .restart local p0    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p1    # "simslot":I
    :cond_5
    :goto_3
    monitor-exit v0

    return-object v1
.end method

.method static declared-synchronized getCscImsSettingVersion(I)Ljava/lang/String;
    .locals 8
    .param p0, "simslot"    # I

    const-class v0, Lcom/sec/internal/ims/util/CscParser;

    monitor-enter v0

    .line 564
    :try_start_0
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->getCscFile(I)Ljava/io/FileInputStream;

    move-result-object v1

    .line 565
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/sec/internal/ims/util/CscParser;->getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 566
    .local v2, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v3, 0x0

    .line 568
    .local v3, "versionInCsc":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 569
    const-string v4, "CscParser"

    const-string v5, "XmlPullParser is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {v1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 571
    monitor-exit v0

    return-object v3

    .line 574
    :cond_0
    :try_start_1
    const-string v4, "CustomerData.Settings.IMSSetting.Setting.Version"

    invoke-static {v2, v4}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 575
    const-string v4, "CscParser"

    const-string v5, "can not find imsSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    invoke-static {v1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 577
    monitor-exit v0

    return-object v3

    .line 581
    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 583
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 584
    const-string v4, "CscParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCscImsSettingVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 588
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 585
    :catch_0
    move-exception v4

    .line 586
    .local v4, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "CscParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCscImsSettingVersion : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 588
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 589
    nop

    .line 591
    monitor-exit v0

    return-object v3

    .line 588
    :goto_2
    :try_start_5
    invoke-static {v1}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 589
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 563
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "versionInCsc":Ljava/lang/String;
    .end local p0    # "simslot":I
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getCscSalesCode(I)Ljava/lang/String;
    .locals 1
    .param p0, "simslot"    # I

    .line 380
    const-string v0, "CustomerData.GeneralInfo.SalesCode"

    invoke-static {p0, v0}, Lcom/sec/internal/ims/util/CscParser;->getFieldFromCsc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCscVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "oldVersion"    # Ljava/lang/String;

    .line 138
    const-string v0, ""

    .line 140
    .local v0, "swConfigPath":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isOmcModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string/jumbo v1, "persist.sys.omc_root"

    const-string v2, "/odm/omc"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, "omcRoot":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/SW_Configuration.xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .end local v1    # "omcRoot":Ljava/lang/String;
    goto :goto_0

    .line 145
    :cond_0
    const-string v0, "/system/SW_Configuration.xml"

    .line 148
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    .local v1, "swConfigFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "CscParser"

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_a

    .line 154
    :cond_1
    const/4 v2, 0x0

    .line 155
    .local v2, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    .line 156
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v5, 0x0

    .line 157
    .local v5, "swConfigStream":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .local v6, "readName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 160
    .local v7, "readVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    move-object v4, v8

    .line 161
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 162
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    move-object v2, v9

    .line 163
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v5, v9

    .line 164
    const/4 v9, 0x0

    invoke-interface {v2, v5, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 167
    const/4 v9, 0x0

    .local v9, "name":Ljava/lang/String;
    const/4 v10, 0x0

    .line 168
    .local v10, "text":Ljava/lang/String;
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    move v12, v11

    .local v12, "event":I
    if-eq v11, v8, :cond_7

    .line 169
    const/4 v11, 0x2

    if-eq v12, v11, :cond_5

    const/4 v11, 0x4

    if-eq v12, v11, :cond_2

    goto :goto_3

    .line 174
    :cond_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 175
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 176
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "CSCName"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 177
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    goto :goto_2

    .line 178
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "CSCVersion"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 179
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    .line 182
    :cond_4
    :goto_2
    const-string v11, ""

    move-object v9, v11

    .line 183
    goto :goto_3

    .line 171
    :cond_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 172
    nop

    .line 189
    :goto_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 190
    const-string v8, "Found Name and Version"

    invoke-static {v3, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto :goto_4

    .line 194
    :cond_6
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 199
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "text":Ljava/lang/String;
    .end local v12    # "event":I
    :cond_7
    :goto_4
    nop

    .line 201
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 203
    :goto_5
    goto :goto_6

    .line 202
    :catch_0
    move-exception v3

    goto :goto_5

    .line 199
    :catchall_0
    move-exception v3

    goto :goto_8

    .line 196
    :catch_1
    move-exception v3

    .line 197
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v5, :cond_8

    .line 201
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 207
    :cond_8
    :goto_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_7

    .line 211
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 208
    :cond_a
    :goto_7
    return-object p0

    .line 199
    :goto_8
    if-eqz v5, :cond_b

    .line 201
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 203
    goto :goto_9

    .line 202
    :catch_2
    move-exception v8

    .line 205
    :cond_b
    :goto_9
    throw v3

    .line 150
    .end local v2    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v5    # "swConfigStream":Ljava/io/FileInputStream;
    .end local v6    # "readName":Ljava/lang/String;
    .end local v7    # "readVersion":Ljava/lang/String;
    :cond_c
    :goto_a
    const-string v2, "Can\'t read CSC Version"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-object p0
.end method

.method private static getFieldFromCsc(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "simSlot"    # I
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 352
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->getCscFile(I)Ljava/io/FileInputStream;

    move-result-object v0

    .line 353
    .local v0, "stream":Ljava/io/FileInputStream;
    invoke-static {v0}, Lcom/sec/internal/ims/util/CscParser;->getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 355
    .local v1, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "CscParser"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 356
    const-string v4, "XmlPullParser is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {v0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 358
    return-object v3

    .line 361
    :cond_0
    invoke-static {v1, p1}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static {v0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 364
    return-object v3

    .line 368
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    goto :goto_0

    .line 370
    :cond_2
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-static {v0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 370
    return-object v2

    .line 374
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 371
    :catch_0
    move-exception v2

    .line 372
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 375
    nop

    .line 376
    return-object v3

    .line 374
    :goto_1
    invoke-static {v0}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 375
    throw v2
.end method

.method public static getNetworkNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;
    .locals 22
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "gid1"    # Ljava/lang/String;
    .param p3, "gid2"    # Ljava/lang/String;
    .param p4, "spname"    # Ljava/lang/String;
    .param p5, "simslot"    # I
    .param p6, "onlymccmnc"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 385
    move-object/from16 v1, p1

    const-string v2, ""

    invoke-static/range {p5 .. p5}, Lcom/sec/internal/ims/util/CscParser;->getCscFile(I)Ljava/io/FileInputStream;

    move-result-object v3

    .line 386
    .local v3, "stream":Ljava/io/FileInputStream;
    invoke-static {v3}, Lcom/sec/internal/ims/util/CscParser;->getCscCustomerParser(Ljava/io/FileInputStream;)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 388
    .local v4, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v0, 0x0

    const-string v5, "CscParser"

    if-nez v4, :cond_0

    .line 389
    const-string v2, "XmlPullParser is null"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {v3}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 391
    return-object v0

    .line 394
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v6, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v7, "spNameFiltered":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "CustomerData.GeneralInfo.NetworkInfo"

    invoke-static {v4, v8}, Lcom/sec/internal/helper/XmlUtils;->search(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 398
    const-string v2, "can not find CustomerData.GeneralInfo.NetworkInfo"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-static {v3}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 400
    return-object v0

    .line 404
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v0, v5, :cond_2

    goto :goto_0

    .line 407
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v0, "subset":Ljava/lang/String;
    goto :goto_1

    .line 405
    .end local v0    # "subset":Ljava/lang/String;
    :cond_3
    :goto_0
    const-string v0, ""

    move-object v5, v0

    .line 412
    .local v5, "subset":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x0

    .line 413
    .local v0, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 414
    .local v8, "cscMccmnc":Ljava/lang/String;
    const/4 v9, 0x0

    .line 415
    .local v9, "networkName":Ljava/lang/String;
    const/4 v10, 0x1

    move-object v11, v2

    .line 416
    .local v11, "cscSubset":Ljava/lang/String;
    const/4 v12, 0x0

    .line 417
    .local v12, "hexadecimalType":Z
    move-object v13, v2

    .line 418
    .local v13, "cscGid1":Ljava/lang/String;
    move-object v14, v2

    .line 419
    .local v14, "cscGid2":Ljava/lang/String;
    move-object v15, v2

    .line 421
    .local v15, "cscSpname":Ljava/lang/String;
    const/16 v16, 0x0

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    move-object/from16 v20, v16

    move-object v13, v8

    move-object v14, v9

    move-object v15, v11

    move/from16 v16, v12

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object v12, v0

    .line 423
    .end local v0    # "name":Ljava/lang/String;
    .end local p2    # "gid1":Ljava/lang/String;
    .end local p3    # "gid2":Ljava/lang/String;
    .end local p4    # "spname":Ljava/lang/String;
    .local v8, "gid1":Ljava/lang/String;
    .local v9, "gid2":Ljava/lang/String;
    .local v11, "spname":Ljava/lang/String;
    .local v12, "name":Ljava/lang/String;
    .local v13, "cscMccmnc":Ljava/lang/String;
    .local v14, "networkName":Ljava/lang/String;
    .local v15, "cscSubset":Ljava/lang/String;
    .local v16, "hexadecimalType":Z
    .local v17, "cscGid1":Ljava/lang/String;
    .local v18, "cscGid2":Ljava/lang/String;
    .local v19, "cscSpname":Ljava/lang/String;
    .local v20, "isCanada":Ljava/lang/Boolean;
    :goto_2
    :try_start_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move/from16 p2, v0

    .local p2, "event":I
    if-eq v0, v10, :cond_2a

    .line 424
    const/4 v0, 0x2

    move/from16 v10, p2

    .end local p2    # "event":I
    .local v10, "event":I
    if-ne v10, v0, :cond_12

    .line 425
    :try_start_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 426
    const-string v0, "MCCMNC"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_5

    .line 427
    :goto_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_4

    goto :goto_3

    .line 428
    :cond_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto :goto_2

    .line 429
    :cond_5
    const-string v0, "SPCode"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 430
    :goto_4
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_6

    goto :goto_4

    .line 431
    :cond_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto :goto_2

    .line 432
    :cond_7
    const-string v0, "CodeType"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 433
    :goto_5
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_8

    goto :goto_5

    .line 434
    :cond_8
    const-string v0, "HEX"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 435
    const/16 v16, 0x1

    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto :goto_2

    .line 437
    :cond_9
    const-string v0, "SubsetCode"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 438
    :goto_6
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_a

    goto :goto_6

    .line 439
    :cond_a
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 440
    :cond_b
    const-string v0, "Gid2"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 441
    :goto_7
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_c

    goto :goto_7

    .line 442
    :cond_c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 443
    :cond_d
    const-string v0, "Spname"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 444
    :goto_8
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_e

    goto :goto_8

    .line 445
    :cond_e
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 446
    :cond_f
    const-string v0, "NetworkName"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 447
    :goto_9
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_10

    goto :goto_9

    .line 448
    :cond_10
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v0

    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 423
    .end local v10    # "event":I
    :cond_11
    move-object/from16 v1, p1

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 548
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .end local v14    # "networkName":Ljava/lang/String;
    .end local v15    # "cscSubset":Ljava/lang/String;
    .end local v16    # "hexadecimalType":Z
    .end local v17    # "cscGid1":Ljava/lang/String;
    .end local v18    # "cscGid2":Ljava/lang/String;
    .end local v19    # "cscSpname":Ljava/lang/String;
    .end local v20    # "isCanada":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    move/from16 v13, p5

    :goto_a
    move-object/from16 v21, v5

    goto/16 :goto_17

    .line 545
    :catch_0
    move-exception v0

    move/from16 v13, p5

    :goto_b
    move-object/from16 v21, v5

    goto/16 :goto_15

    .line 450
    .restart local v10    # "event":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v14    # "networkName":Ljava/lang/String;
    .restart local v15    # "cscSubset":Ljava/lang/String;
    .restart local v16    # "hexadecimalType":Z
    .restart local v17    # "cscGid1":Ljava/lang/String;
    .restart local v18    # "cscGid2":Ljava/lang/String;
    .restart local v19    # "cscSpname":Ljava/lang/String;
    .restart local v20    # "isCanada":Ljava/lang/Boolean;
    :cond_12
    const/4 v0, 0x3

    if-ne v10, v0, :cond_28

    .line 451
    :try_start_2
    const-string v0, "NetworkInfo"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_27

    .line 452
    if-nez v16, :cond_13

    .line 454
    :try_start_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 455
    .local v0, "num":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 458
    .end local v0    # "num":I
    .end local v17    # "cscGid1":Ljava/lang/String;
    .local v1, "cscGid1":Ljava/lang/String;
    goto :goto_c

    .line 456
    .end local v1    # "cscGid1":Ljava/lang/String;
    .restart local v17    # "cscGid1":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 457
    .local v0, "ne":Ljava/lang/NumberFormatException;
    move-object v1, v2

    .line 460
    .end local v0    # "ne":Ljava/lang/NumberFormatException;
    .end local v17    # "cscGid1":Ljava/lang/String;
    .restart local v1    # "cscGid1":Ljava/lang/String;
    :goto_c
    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 461
    .local v0, "num":I
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 464
    .end local v0    # "num":I
    .end local v18    # "cscGid2":Ljava/lang/String;
    .local v17, "cscGid2":Ljava/lang/String;
    move-object/from16 v0, v17

    goto :goto_d

    .line 462
    .end local v17    # "cscGid2":Ljava/lang/String;
    .restart local v18    # "cscGid2":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 463
    .local v0, "ne":Ljava/lang/NumberFormatException;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    .end local v18    # "cscGid2":Ljava/lang/String;
    .restart local v17    # "cscGid2":Ljava/lang/String;
    goto :goto_d

    .line 452
    .end local v0    # "ne":Ljava/lang/NumberFormatException;
    .end local v1    # "cscGid1":Ljava/lang/String;
    .local v17, "cscGid1":Ljava/lang/String;
    .restart local v18    # "cscGid2":Ljava/lang/String;
    :cond_13
    move-object/from16 v1, v17

    move-object/from16 v0, v18

    .line 467
    .end local v17    # "cscGid1":Ljava/lang/String;
    .end local v18    # "cscGid2":Ljava/lang/String;
    .local v0, "cscGid2":Ljava/lang/String;
    .restart local v1    # "cscGid1":Ljava/lang/String;
    :goto_d
    :try_start_5
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_26

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 468
    move-object/from16 v21, v5

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    goto/16 :goto_12

    .line 472
    :cond_14
    move/from16 p2, v10

    .end local v10    # "event":I
    .restart local p2    # "event":I
    const-string v10, "00101"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    const-string v10, "001001"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_25

    const-string v10, "001010"

    .line 473
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    const-string v10, "00101f"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_24

    const-string v10, "99999"

    .line 474
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    const-string v10, "45001"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 475
    move-object/from16 v21, v5

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    goto/16 :goto_12

    .line 478
    :cond_15
    move-object/from16 v10, p0

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v17, :cond_21

    .line 479
    if-eqz p6, :cond_16

    .line 480
    :try_start_6
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v21, v5

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    goto/16 :goto_11

    .line 482
    :cond_16
    :try_start_7
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v17, :cond_19

    :try_start_8
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_19

    .line 483
    if-nez v20, :cond_17

    .line 484
    sget-object v17, Lcom/sec/internal/constants/Mno$Country;->CANADA:Lcom/sec/internal/constants/Mno$Country;

    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/constants/Mno$Country;->getCountryIso()Ljava/lang/String;

    move-result-object v10

    move-object/from16 p3, v12

    .end local v12    # "name":Ljava/lang/String;
    .local p3, "name":Ljava/lang/String;
    const-string v12, "CustomerData.GeneralInfo.CountryISO"
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-object/from16 p4, v13

    move/from16 v13, p5

    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .local p4, "cscMccmnc":Ljava/lang/String;
    :try_start_9
    invoke-static {v13, v12}, Lcom/sec/internal/ims/util/CscParser;->getFieldFromCsc(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v20, v10

    goto :goto_e

    .line 483
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    :cond_17
    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .line 486
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    :goto_e
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_18

    const/4 v10, 0x1

    goto :goto_f

    :cond_18
    const/4 v10, 0x0

    :goto_f
    invoke-virtual {v5, v15, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 487
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 488
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 489
    move-object/from16 v21, v5

    goto/16 :goto_16

    .line 548
    .end local v0    # "cscGid2":Ljava/lang/String;
    .end local v1    # "cscGid1":Ljava/lang/String;
    .end local v14    # "networkName":Ljava/lang/String;
    .end local v15    # "cscSubset":Ljava/lang/String;
    .end local v16    # "hexadecimalType":Z
    .end local v19    # "cscSpname":Ljava/lang/String;
    .end local v20    # "isCanada":Ljava/lang/Boolean;
    .end local p2    # "event":I
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    :catchall_1
    move-exception v0

    goto/16 :goto_a

    .line 545
    :catch_3
    move-exception v0

    goto/16 :goto_b

    .line 482
    .restart local v0    # "cscGid2":Ljava/lang/String;
    .restart local v1    # "cscGid1":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v14    # "networkName":Ljava/lang/String;
    .restart local v15    # "cscSubset":Ljava/lang/String;
    .restart local v16    # "hexadecimalType":Z
    .restart local v19    # "cscSpname":Ljava/lang/String;
    .restart local v20    # "isCanada":Ljava/lang/Boolean;
    .restart local p2    # "event":I
    :cond_19
    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .line 492
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    :cond_1a
    :try_start_a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const-string v12, "^0+(?!$)"

    if-nez v10, :cond_1c

    :try_start_b
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1c

    .line 494
    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 495
    invoke-virtual {v8, v12, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 497
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 498
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-object/from16 v21, v5

    .end local v5    # "subset":Ljava/lang/String;
    .local v21, "subset":Ljava/lang/String;
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 499
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 500
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    goto/16 :goto_16

    .line 497
    .end local v21    # "subset":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    :cond_1b
    move-object/from16 v21, v5

    .end local v5    # "subset":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    goto :goto_10

    .line 492
    .end local v21    # "subset":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    :cond_1c
    move-object/from16 v21, v5

    .line 504
    .end local v5    # "subset":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    :cond_1d
    :goto_10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 506
    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 507
    invoke-virtual {v9, v12, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 509
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 510
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 511
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 512
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    goto/16 :goto_16

    .line 516
    :cond_1e
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20

    .line 517
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 518
    .end local v19    # "cscSpname":Ljava/lang/String;
    .local v5, "cscSpname":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    .line 520
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f

    .line 521
    invoke-virtual {v11, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 522
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 523
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    goto/16 :goto_16

    .line 528
    :cond_1f
    move-object/from16 v19, v5

    .end local v5    # "cscSpname":Ljava/lang/String;
    .restart local v19    # "cscSpname":Ljava/lang/String;
    :cond_20
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 529
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 533
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 548
    .end local v0    # "cscGid2":Ljava/lang/String;
    .end local v1    # "cscGid1":Ljava/lang/String;
    .end local v14    # "networkName":Ljava/lang/String;
    .end local v15    # "cscSubset":Ljava/lang/String;
    .end local v16    # "hexadecimalType":Z
    .end local v19    # "cscSpname":Ljava/lang/String;
    .end local v20    # "isCanada":Ljava/lang/Boolean;
    .end local v21    # "subset":Ljava/lang/String;
    .end local p2    # "event":I
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .local v5, "subset":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto/16 :goto_13

    .line 545
    :catch_4
    move-exception v0

    goto/16 :goto_14

    .line 478
    .restart local v0    # "cscGid2":Ljava/lang/String;
    .restart local v1    # "cscGid1":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v14    # "networkName":Ljava/lang/String;
    .restart local v15    # "cscSubset":Ljava/lang/String;
    .restart local v16    # "hexadecimalType":Z
    .restart local v19    # "cscSpname":Ljava/lang/String;
    .restart local v20    # "isCanada":Ljava/lang/Boolean;
    .restart local p2    # "event":I
    :cond_21
    move-object/from16 v21, v5

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .line 538
    .end local v5    # "subset":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    :cond_22
    :goto_11
    move-object/from16 v19, v2

    move-object/from16 v18, v2

    .end local v0    # "cscGid2":Ljava/lang/String;
    .restart local v18    # "cscGid2":Ljava/lang/String;
    move-object/from16 v17, v2

    .end local v1    # "cscGid1":Ljava/lang/String;
    .restart local v17    # "cscGid1":Ljava/lang/String;
    move-object v15, v2

    move-object v0, v2

    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .local v0, "cscMccmnc":Ljava/lang/String;
    move-object v14, v2

    .line 539
    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object/from16 v12, p3

    move-object v13, v0

    move-object/from16 v5, v21

    const/4 v10, 0x1

    goto/16 :goto_2

    .line 474
    .end local v17    # "cscGid1":Ljava/lang/String;
    .end local v18    # "cscGid2":Ljava/lang/String;
    .end local v21    # "subset":Ljava/lang/String;
    .end local p3    # "name":Ljava/lang/String;
    .local v0, "cscGid2":Ljava/lang/String;
    .restart local v1    # "cscGid1":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    :cond_23
    move-object/from16 v21, v5

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .end local v5    # "subset":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    goto :goto_12

    .line 473
    .end local v21    # "subset":Ljava/lang/String;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    :cond_24
    move-object/from16 v21, v5

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .end local v5    # "subset":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    goto :goto_12

    .line 472
    .end local v21    # "subset":Ljava/lang/String;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    :cond_25
    move-object/from16 v21, v5

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .end local v5    # "subset":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    goto :goto_12

    .line 467
    .end local v21    # "subset":Ljava/lang/String;
    .end local p2    # "event":I
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    .restart local v10    # "event":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    :cond_26
    move-object/from16 v21, v5

    move/from16 p2, v10

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .line 423
    .end local v5    # "subset":Ljava/lang/String;
    .end local v10    # "event":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    :goto_12
    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v18, v0

    move-object/from16 v17, v1

    move-object/from16 v5, v21

    const/4 v10, 0x1

    move-object/from16 v1, p1

    goto/16 :goto_2

    .line 540
    .end local v0    # "cscGid2":Ljava/lang/String;
    .end local v1    # "cscGid1":Ljava/lang/String;
    .end local v21    # "subset":Ljava/lang/String;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    .restart local v10    # "event":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v17    # "cscGid1":Ljava/lang/String;
    .restart local v18    # "cscGid2":Ljava/lang/String;
    :cond_27
    move-object/from16 v21, v5

    move/from16 p2, v10

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .end local v5    # "subset":Ljava/lang/String;
    .end local v10    # "event":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    .restart local p2    # "event":I
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    const-string v0, "GeneralInfo"

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v0, :cond_29

    .line 541
    goto :goto_16

    .line 545
    .end local v14    # "networkName":Ljava/lang/String;
    .end local v15    # "cscSubset":Ljava/lang/String;
    .end local v16    # "hexadecimalType":Z
    .end local v17    # "cscGid1":Ljava/lang/String;
    .end local v18    # "cscGid2":Ljava/lang/String;
    .end local v19    # "cscSpname":Ljava/lang/String;
    .end local v20    # "isCanada":Ljava/lang/Boolean;
    .end local p2    # "event":I
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    :catch_5
    move-exception v0

    goto :goto_15

    .line 450
    .end local v21    # "subset":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    .restart local v10    # "event":I
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v14    # "networkName":Ljava/lang/String;
    .restart local v15    # "cscSubset":Ljava/lang/String;
    .restart local v16    # "hexadecimalType":Z
    .restart local v17    # "cscGid1":Ljava/lang/String;
    .restart local v18    # "cscGid2":Ljava/lang/String;
    .restart local v19    # "cscSpname":Ljava/lang/String;
    .restart local v20    # "isCanada":Ljava/lang/Boolean;
    :cond_28
    move-object/from16 v21, v5

    move/from16 p2, v10

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .line 423
    .end local v5    # "subset":Ljava/lang/String;
    .end local v10    # "event":I
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    :cond_29
    move-object/from16 v1, p1

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v5, v21

    const/4 v10, 0x1

    goto/16 :goto_2

    .end local v21    # "subset":Ljava/lang/String;
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local p2    # "event":I
    :cond_2a
    move-object/from16 v21, v5

    move-object/from16 p3, v12

    move-object/from16 p4, v13

    move/from16 v13, p5

    .end local v5    # "subset":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "cscMccmnc":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    .restart local p3    # "name":Ljava/lang/String;
    .restart local p4    # "cscMccmnc":Ljava/lang/String;
    goto :goto_16

    .line 548
    .end local v14    # "networkName":Ljava/lang/String;
    .end local v15    # "cscSubset":Ljava/lang/String;
    .end local v16    # "hexadecimalType":Z
    .end local v17    # "cscGid1":Ljava/lang/String;
    .end local v18    # "cscGid2":Ljava/lang/String;
    .end local v19    # "cscSpname":Ljava/lang/String;
    .end local v20    # "isCanada":Ljava/lang/Boolean;
    .end local v21    # "subset":Ljava/lang/String;
    .end local p2    # "event":I
    .end local p3    # "name":Ljava/lang/String;
    .end local p4    # "cscMccmnc":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move/from16 v13, p5

    :goto_13
    move-object/from16 v21, v5

    .end local v5    # "subset":Ljava/lang/String;
    .restart local v21    # "subset":Ljava/lang/String;
    goto :goto_17

    .line 545
    .end local v21    # "subset":Ljava/lang/String;
    .restart local v5    # "subset":Ljava/lang/String;
    :catch_6
    move-exception v0

    move/from16 v13, p5

    :goto_14
    move-object/from16 v21, v5

    .line 546
    .end local v5    # "subset":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "subset":Ljava/lang/String;
    :goto_15
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 548
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_16
    invoke-static {v3}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 549
    nop

    .line 551
    if-eqz p6, :cond_2b

    .line 552
    return-object v6

    .line 555
    :cond_2b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2c

    .line 556
    return-object v7

    .line 558
    :cond_2c
    return-object v6

    .line 548
    :catchall_4
    move-exception v0

    :goto_17
    invoke-static {v3}, Lcom/sec/internal/ims/util/CscParser;->closeFileInputStream(Ljava/io/FileInputStream;)V

    .line 549
    throw v0
.end method

.method static getOmcInfoVersion(Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    .param p0, "oldVersion"    # Ljava/lang/String;
    .param p1, "simslot"    # I

    .line 215
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isOmcModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    return-object p0

    .line 219
    :cond_0
    const-string/jumbo v0, "persist.sys.omc_path"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "omcPath":Ljava/lang/String;
    const-string v1, ""

    .line 222
    .local v1, "omcNwPath":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getOmcVersion()D

    move-result-wide v2

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v2, v2, v4

    const-string/jumbo v3, "persist.sys.omcnw_path"

    const/4 v4, 0x1

    if-ltz v2, :cond_2

    const-string/jumbo v2, "persist.radio.multisim.config"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "dsds"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    if-ne p1, v4, :cond_1

    .line 224
    const-string/jumbo v2, "persist.sys.omcnw_path2"

    invoke-static {v2, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 226
    :cond_1
    invoke-static {v3, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_2
    invoke-static {v3, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/omc.info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 233
    .local v2, "omcInfoPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, "omcinfoFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    const-string v6, "CscParser"

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_8

    .line 240
    :cond_3
    const/4 v5, 0x0

    .line 241
    .local v5, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    .line 242
    .local v7, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x0

    .line 243
    .local v8, "omcInfoStream":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 246
    .local v9, "readVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    move-object v7, v10

    .line 247
    invoke-virtual {v7, v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 248
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    move-object v5, v10

    .line 249
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v8, v10

    .line 250
    const/4 v10, 0x0

    invoke-interface {v5, v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 253
    const/4 v10, 0x0

    .local v10, "name":Ljava/lang/String;
    const/4 v11, 0x0

    .line 254
    .local v11, "text":Ljava/lang/String;
    :goto_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    move v13, v12

    .local v13, "event":I
    if-eq v12, v4, :cond_8

    .line 255
    const/4 v12, 0x2

    if-eq v13, v12, :cond_6

    const/4 v12, 0x4

    if-eq v13, v12, :cond_4

    goto :goto_2

    .line 260
    :cond_4
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    .line 261
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 262
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string/jumbo v12, "version"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 263
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 266
    :cond_5
    const-string v12, ""

    move-object v10, v12

    .line 267
    goto :goto_2

    .line 257
    :cond_6
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    .line 258
    nop

    .line 273
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 274
    const-string v4, "Found OMC Version"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    goto :goto_3

    .line 278
    :cond_7
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 283
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "text":Ljava/lang/String;
    .end local v13    # "event":I
    :cond_8
    :goto_3
    nop

    .line 285
    :try_start_1
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :goto_4
    goto :goto_5

    .line 286
    :catch_0
    move-exception v4

    goto :goto_4

    .line 283
    :catchall_0
    move-exception v4

    goto :goto_6

    .line 280
    :catch_1
    move-exception v4

    .line 281
    .local v4, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 283
    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_9

    .line 285
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 291
    :cond_9
    :goto_5
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 292
    return-object p0

    .line 295
    :cond_a
    return-object v9

    .line 283
    :goto_6
    if-eqz v8, :cond_b

    .line 285
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 287
    goto :goto_7

    .line 286
    :catch_2
    move-exception v6

    .line 289
    :cond_b
    :goto_7
    throw v4

    .line 236
    .end local v5    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v8    # "omcInfoStream":Ljava/io/FileInputStream;
    .end local v9    # "readVersion":Ljava/lang/String;
    :cond_c
    :goto_8
    const-string v4, "Can\'t read OMC Version"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-object p0
.end method

.method private static getSetting(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "xpp"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 644
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 647
    .local v0, "setting":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 648
    .local v2, "text":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    move v4, v3

    .local v4, "event":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    .line 649
    const/4 v3, 0x2

    if-ne v4, v3, :cond_0

    .line 650
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    .line 651
    :cond_0
    const/4 v3, 0x3

    if-ne v4, v3, :cond_1

    .line 652
    const-string v3, "Setting"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 653
    goto :goto_2

    .line 655
    :cond_1
    const/4 v3, 0x4

    if-ne v4, v3, :cond_2

    .line 656
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 657
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_2
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 665
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "text":Ljava/lang/String;
    .end local v4    # "event":I
    :cond_3
    :goto_2
    goto :goto_3

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSetting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CscParser"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    return-object v0
.end method

.method public static declared-synchronized isCscChanged(Landroid/content/Context;I)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simslot"    # I

    const-class v0, Lcom/sec/internal/ims/util/CscParser;

    monitor-enter v0

    .line 306
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    if-ltz p1, :cond_3

    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/util/CscParser;->sCscChangeChecked:[Z

    array-length v2, v2

    if-lt p1, v2, :cond_0

    goto/16 :goto_0

    .line 310
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/util/CscParser;->sCscChangeChecked:[Z

    aget-boolean v2, v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 311
    monitor-exit v0

    return v1

    .line 314
    :cond_1
    :try_start_1
    const-string v2, "CSC_INFO_PREF"

    invoke-static {p1, p0, v2, v1, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 317
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v3, "csc.key.edition"

    const-string/jumbo v4, "unknown"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "oldCscEdition":Ljava/lang/String;
    const-string v4, "csc.key.version"

    const-string/jumbo v5, "unknown"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "oldCscVersion":Ljava/lang/String;
    const-string v5, "csc.key.salescode"

    const-string/jumbo v6, "unknown"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 320
    .local v5, "oldCscSalesCode":Ljava/lang/String;
    const-string v6, "omc.key.version"

    const-string/jumbo v7, "unknown"

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 322
    .local v6, "oldOmcVersion":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->getCscEdition(I)Ljava/lang/String;

    move-result-object v7

    .line 323
    .local v7, "newCscEdition":Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/internal/ims/util/CscParser;->getCscVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 324
    .local v8, "newCscVersion":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/ims/util/CscParser;->getCscSalesCode(I)Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, "newCscSalesCode":Ljava/lang/String;
    invoke-static {v6, p1}, Lcom/sec/internal/ims/util/CscParser;->getOmcInfoVersion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, "newOmcVersion":Ljava/lang/String;
    const-string v11, "CscParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "old edition : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " new edition : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v11, "CscParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "old csc version : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " new csc version : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string v11, "CscParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "old salescode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " new salescode : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v11, "CscParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "old omc version : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " new omc version : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    sget-object v11, Lcom/sec/internal/ims/util/CscParser;->sCscChangeChecked:[Z

    const/4 v12, 0x1

    aput-boolean v12, v11, p1

    .line 334
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 335
    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 336
    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 337
    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_2

    .line 338
    monitor-exit v0

    return v1

    .line 340
    :cond_2
    :try_start_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 341
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 342
    const-string v11, "csc.key.edition"

    invoke-interface {v1, v11, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    const-string v11, "csc.key.version"

    invoke-interface {v1, v11, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 344
    const-string v11, "csc.key.salescode"

    invoke-interface {v1, v11, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 345
    const-string v11, "omc.key.version"

    invoke-interface {v1, v11, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 347
    monitor-exit v0

    return v12

    .line 305
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    .end local v3    # "oldCscEdition":Ljava/lang/String;
    .end local v4    # "oldCscVersion":Ljava/lang/String;
    .end local v5    # "oldCscSalesCode":Ljava/lang/String;
    .end local v6    # "oldOmcVersion":Ljava/lang/String;
    .end local v7    # "newCscEdition":Ljava/lang/String;
    .end local v8    # "newCscVersion":Ljava/lang/String;
    .end local v9    # "newCscSalesCode":Ljava/lang/String;
    .end local v10    # "newOmcVersion":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "simslot":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 307
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "simslot":I
    :cond_3
    :goto_0
    monitor-exit v0

    return v1
.end method

.method public static isPilotSetting(I)Z
    .locals 3
    .param p0, "simslot"    # I

    .line 671
    invoke-static {p0}, Lcom/sec/internal/ims/util/CscParser;->getCscImsSettingVersion(I)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "version":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 673
    return v2

    .line 675
    :cond_0
    const-string v1, "1.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PILOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method
