.class public Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;
.super Ljava/lang/Object;
.source "ATTGlobalVariables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables$ProvisionApiHeaderAttribute;
    }
.end annotation


# static fields
.field public static ACMS_HOST_NAME:Ljava/lang/String; = null

.field public static ACMS_TARGET_URL:Ljava/lang/String; = null

.field public static APPLICATION_ID:Ljava/lang/String; = null

.field public static APP_ID:Ljava/lang/String; = null

.field public static final ATT_DATA_MESSAGE_PORT:Ljava/lang/String; = "5586"

.field public static BUILD_INFO:Ljava/lang/String; = null

.field public static final CONNECT_HTTPS:Ljava/lang/String; = "https://"

.field public static CPS_HOST_NAME:Ljava/lang/String; = null

.field public static DEFAULT_NMS_HOST:Ljava/lang/String; = null

.field public static DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String; = null

.field private static HTTP_CLIENT_ID:Ljava/lang/String; = null

.field public static final INIT_SYNC_TERMINAL_FLAG:I = -0x1

.field public static final INTERVAL_ZCODE_API:I = 0xdbba0

.field public static MSG_PROXY_HOST_NAME:Ljava/lang/String; = null

.field public static final MSG_STORE_SERVICE_NAME:Ljava/lang/String; = "msgstoreoemtbs"

.field public static final PHASE_AMBS_SERVICE:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESERVED_TIME:I = 0x384

.field private static final TAG:Ljava/lang/String;

.field public static URL_PARAM_STYLE:Ljava/lang/String; = null

.field public static final USER_CTN_LENTH:I = 0xa

.field public static VERSION_NAME:Ljava/lang/String;

.field private static ambsPhaseVersion:I

.field private static mAddList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 40

    .line 27
    const/4 v0, 0x3

    sput v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ambsPhaseVersion:I

    .line 29
    const-class v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->PHASE_AMBS_SERVICE:Ljava/util/HashSet;

    .line 34
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->PHASE_AMBS_SERVICE:Ljava/util/HashSet;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    const-string v0, "SGH_SMC105A"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APPLICATION_ID:Ljava/lang/String;

    .line 50
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "values":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SGH_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APPLICATION_ID:Ljava/lang/String;

    .line 54
    .end local v0    # "values":[Ljava/lang/String;
    sput-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->HTTP_CLIENT_ID:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "C105A"

    const-string v2, "G800A"

    const-string v3, "G850A"

    const-string v4, "N915A"

    const-string v5, "G750A"

    const-string v6, "N910A"

    const-string v7, "G920A"

    const-string v8, "G925A"

    const-string v9, "G890A"

    const-string v10, "N920A"

    const-string v11, "G928A"

    const-string v12, "Zenzero"

    const-string v13, "J120A"

    const-string v14, "J320A"

    const-string v15, "G930A"

    const-string v16, "G935A"

    const-string v17, "G891A"

    const-string v18, "N930A"

    const-string v19, "J327A"

    const-string v20, "J727A"

    const-string v21, "G950U"

    const-string v22, "G955U"

    const-string v23, "G892A"

    const-string v24, "N950U"

    const-string v25, "G960U"

    const-string v26, "G965U"

    const-string v27, "J337A"

    const-string v28, "J737A"

    const-string v29, "N960U"

    const-string v30, "A600A"

    const-string v31, "G970U"

    const-string v32, "G973U"

    const-string v33, "G975U"

    const-string v34, "J260A"

    const-string v35, "F900U"

    const-string v36, "G977U"

    const-string v37, "A205U"

    const-string v38, "A505U"

    const-string v39, "A705U"

    filled-new-array/range {v1 .. v39}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->mAddList:Ljava/util/ArrayList;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 63
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->mAddList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APPLICATION_ID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_p4"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->HTTP_CLIENT_ID:Ljava/lang/String;

    .line 65
    goto :goto_1

    .line 62
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "i":I
    :cond_1
    :goto_1
    const-string/jumbo v0, "tprodsmsx.att.net"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    .line 77
    const-string v0, "messagessms.att.net"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->MSG_PROXY_HOST_NAME:Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->URL_PARAM_STYLE:Ljava/lang/String;

    .line 79
    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    .line 82
    const-string v0, "cns.att.net"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "vcnms-c2s.enc.att.net"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_NMS_HOST:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->MSG_PROXY_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GetHUIMSToken?applicationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APPLICATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_TARGET_URL:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",os=Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",fw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->BUILD_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpClientID()Ljava/lang/String;
    .locals 1

    .line 161
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->HTTP_CLIENT_ID:Ljava/lang/String;

    return-object v0

    .line 164
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APPLICATION_ID:Ljava/lang/String;

    return-object v0
.end method

.method private static initAppID()V
    .locals 1

    .line 110
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "ismvAI24FaBhGRJFewoEn2CtsRE="

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_0
    const-string v0, "/8ptGdh1Zj1qutLxu+oBJP1fa4Y="

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    .line 115
    :goto_0
    return-void
.end method

.method public static initDefault()V
    .locals 1

    .line 118
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initAppID()V

    .line 119
    const-string/jumbo v0, "tprodsmsx.att.net"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    .line 120
    const-string v0, "messagessms.att.net"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->MSG_PROXY_HOST_NAME:Ljava/lang/String;

    .line 121
    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->URL_PARAM_STYLE:Ljava/lang/String;

    .line 122
    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    .line 123
    const-string v0, "cns.att.net"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private static initVersion()V
    .locals 1

    .line 98
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isAmbsPhaseIV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "5.4.106"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    goto :goto_0

    .line 101
    :cond_0
    const-string v0, "5.3.81"

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    .line 103
    :goto_0
    return-void
.end method

.method public static initVersionName()V
    .locals 3

    .line 106
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init version name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method public static isAmbsPhaseIV()Z
    .locals 2

    .line 157
    sget v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ambsPhaseVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isGcmReplacePolling()Z
    .locals 2

    .line 153
    sget v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ambsPhaseVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setAmbsPhaseVersion(I)V
    .locals 3
    .param p0, "phaseVersion"    # I

    .line 146
    sput p0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ambsPhaseVersion:I

    .line 147
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initVersion()V

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initAppID()V

    .line 149
    sget-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ambsPhaseVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ambsPhaseVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public static setDebugHttps(Z)V
    .locals 1
    .param p0, "isDebug"    # Z

    .line 141
    invoke-static {}, Lcom/sec/internal/helper/httpclient/HttpController;->getInstance()Lcom/sec/internal/helper/httpclient/HttpController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/httpclient/HttpController;->setDebugHttps(Z)V

    .line 143
    return-void
.end method

.method public static setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "authHostName"    # Ljava/lang/String;
    .param p2, "cpsHostName"    # Ljava/lang/String;
    .param p3, "ncHostName"    # Ljava/lang/String;

    .line 128
    sput-object p0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APP_ID:Ljava/lang/String;

    .line 129
    sput-object p1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_HOST_NAME:Ljava/lang/String;

    .line 130
    sput-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->MSG_PROXY_HOST_NAME:Ljava/lang/String;

    .line 131
    sput-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->URL_PARAM_STYLE:Ljava/lang/String;

    .line 132
    sput-object p2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->CPS_HOST_NAME:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->MSG_PROXY_HOST_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GetHUIMSToken?applicationID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->APPLICATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_TARGET_URL:Ljava/lang/String;

    .line 136
    sput-object p3, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->DEFAULT_PRODUCT_NC_HOST:Ljava/lang/String;

    .line 137
    return-void
.end method
