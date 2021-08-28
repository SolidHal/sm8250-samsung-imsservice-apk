.class public Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowCmcc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Authorize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchOtp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttps;,
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$FetchHttp;,
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;,
        Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;
    }
.end annotation


# static fields
.field protected static final AUTO_CONFIG_MAX_FLOWCOUNT:I = 0x14

.field public static final INTENT_ACTION_RCS_ENABLE:Ljava/lang/String; = "android.intent.action.RCS_ENABLE"

.field public static final INTENT_PARAM_RCS_ENABLE:Ljava/lang/String; = "RCS_ENABLE"

.field public static final INTENT_PARAM_RCS_ENABLE_TYPE:Ljava/lang/String; = "action_type"

.field public static final INTENT_VALUE_RCS_ENABLE_TYPE_ALL_RCS:Ljava/lang/String; = "ALL_RCS"

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final MAX_SERVER_COUNT:I


# instance fields
.field protected hasNotified:Z

.field private isWiFiAutoConfig:Z

.field protected mHttpResult:I

.field protected mIsReceicedXml:Z

.field protected mMinValidity:I

.field protected mNewServerInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mOldServerInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mServerCount:I

.field protected mServerId:I

.field protected mSharedInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/SharedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestOtpStep:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    .line 49
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants;->APPID_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sput v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->MAX_SERVER_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 76
    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceCmcc;

    invoke-direct {v5, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceCmcc;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;

    invoke-direct {v7, v14}, Lcom/sec/internal/ims/config/adapters/HttpAdapterCmcc;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapterMultipleServer;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, v12, v13}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->requestOtpStep:Z

    .line 59
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->isWiFiAutoConfig:Z

    .line 60
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mHttpResult:I

    .line 62
    const v1, 0x7fffffff

    iput v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mMinValidity:I

    .line 63
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->hasNotified:Z

    .line 64
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mOldServerInfoList:Ljava/util/List;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfoList:Ljava/util/List;

    .line 68
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mIsReceicedXml:Z

    .line 69
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerCount:I

    .line 78
    iget-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 47
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    .line 47
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->isWiFiAutoConfig:Z

    return v0
.end method

.method static synthetic access$602(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->isWiFiAutoConfig:Z

    return p1
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;

    .line 47
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->requestOtpStep:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;
    .param p1, "x1"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->requestOtpStep:Z

    return p1
.end method

.method private updateTables()V
    .locals 5

    .line 226
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTables: mOldServerInfoList.size() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mOldServerInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mNewServerInfoList.size() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    .line 227
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mOldServerInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 229
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;->fqdn:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mOldServerInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;->fqdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    .line 230
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 231
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateTables: delete table "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 233
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "config_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mIdentity:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 234
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->deleteAll()Z

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_3
    return-void
.end method


# virtual methods
.method public enableRcs(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .line 554
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRcs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RCS_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 558
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "action_type"

    const-string v2, "ALL_RCS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 559
    const-string v1, "RCS_ENABLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 561
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string v2, "enableRcs: Intent has been transmitted sucessfully !!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 280
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleAdditionalServer()Z
    .locals 8

    .line 146
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    .line 148
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->setDefaultServerInfo(Ljava/util/List;)Z

    move-result v0

    .line 149
    .local v0, "hasAdditionalServer":Z
    if-eqz v0, :cond_0

    .line 150
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleAdditionalServer: Access-control present"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->setAdditionalServerInfo(Ljava/util/List;)V

    .line 152
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mNewServerInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerCount:I

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->updateTables()V

    goto :goto_0

    .line 156
    .end local v0    # "hasAdditionalServer":Z
    :cond_1
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerCount:I

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 159
    .restart local v0    # "hasAdditionalServer":Z
    :goto_0
    const-string v3, "config_"

    if-eqz v0, :cond_4

    .line 160
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleAdditionalServer: updating storage"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 164
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mIdentity:Ljava/lang/String;

    .line 165
    invoke-static {v3}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    .line 164
    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 167
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 168
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfoList:Ljava/util/List;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/config/SharedInfo;

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    goto :goto_1

    .line 170
    :cond_3
    new-instance v1, Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mRcsProfile:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mRcsVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mClientVersion:Ljava/lang/String;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/config/SharedInfo;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    .line 171
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfoList:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    :cond_4
    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    .line 175
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->close()V

    .line 176
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mIdentity:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/helper/HashManager;->generateMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->open(Landroid/content/Context;Ljava/lang/String;I)V

    .line 179
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasAdditionalServer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 83
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    .line 140
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->resetStorage()V

    .line 87
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStartForce:Z

    .line 90
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->sIsConfigOngoing:Z

    if-eqz v0, :cond_2

    .line 91
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AutoConfig: ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    goto/16 :goto_0

    .line 94
    :cond_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->sIsConfigOngoing:Z

    .line 95
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string v2, "AutoConfig: start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mModuleHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "hasAdditionalServer":Z
    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    if-nez v2, :cond_3

    .line 101
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mOldServerInfoList:Ljava/util/List;

    .line 102
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->setDefaultServerInfo(Ljava/util/List;)Z

    move-result v0

    .line 103
    if-eqz v0, :cond_3

    .line 104
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mOldServerInfoList:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->setAdditionalServerInfo(Ljava/util/List;)V

    .line 107
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getVersion()I

    move-result v2

    .line 108
    .local v2, "oldVersion":I
    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->needScheduleAutoconfig(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 109
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->scheduleAutoconfig(I)V

    .line 111
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->getVersion()I

    move-result v4

    .line 112
    .local v4, "newVersion":I
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->handleAdditionalServer()Z

    move-result v0

    .line 113
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsReceicedXml: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mIsReceicedXml:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->sIsConfigOngoing:Z

    .line 116
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "oldVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " newVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " next serverID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mServerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    if-nez v0, :cond_5

    .line 118
    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string v7, "AutoConfig: finish"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->setCompleted(Z)V

    .line 120
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mModuleHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    .line 122
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 120
    invoke-virtual {p0, v3, v2, v4, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 123
    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->hasNotified:Z

    .line 124
    iput-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStartForce:Z

    .line 125
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/PowerController;->release()V

    goto :goto_0

    .line 127
    :cond_5
    if-gtz v4, :cond_6

    iget-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->hasNotified:Z

    if-nez v5, :cond_6

    .line 128
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Notifying ConfigModule"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mModuleHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mPhoneId:I

    .line 131
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 129
    invoke-virtual {p0, v3, v2, v4, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->hasNotified:Z

    .line 134
    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->sendEmptyMessage(I)Z

    .line 137
    nop

    .line 142
    .end local v0    # "hasAdditionalServer":Z
    .end local v2    # "oldVersion":I
    .end local v4    # "newVersion":I
    :goto_0
    return-void
.end method

.method protected setAdditionalServerInfo(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;",
            ">;)V"
        }
    .end annotation

    .line 204
    .local p1, "serverInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->MAX_SERVER_COUNT:I

    if-ge v0, v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "root/access-control/server/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/fqdn"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "fqdn":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 207
    return-void

    .line 210
    :cond_0
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    .line 211
    .local v2, "serverInfo":Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;
    iput-object v1, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;->fqdn:Ljava/lang/String;

    .line 212
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    sget v5, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->MAX_SERVER_COUNT:I

    if-ge v4, v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/app-id/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "appId":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 215
    goto :goto_2

    .line 218
    :cond_1
    iget-object v6, v2, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;->appIdList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v5    # "appId":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 221
    .end local v4    # "j":I
    :cond_2
    :goto_2
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .end local v1    # "fqdn":Ljava/lang/String;
    .end local v2    # "serverInfo":Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method protected setDefaultServerInfo(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;",
            ">;)Z"
        }
    .end annotation

    .line 184
    .local p1, "serverInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/access-control/server/0/app-id/0"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "appId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 186
    const/4 v1, 0x0

    return v1

    .line 189
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    .line 190
    .local v1, "serverInfo":Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->MAX_SERVER_COUNT:I

    if-ge v2, v3, :cond_2

    .line 191
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "root/access-control/default/app-id/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    if-nez v0, :cond_1

    .line 193
    goto :goto_1

    .line 196
    :cond_1
    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$ServerInfo;->appIdList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    .end local v2    # "i":I
    :cond_2
    :goto_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    const/4 v2, 0x1

    return v2
.end method

.method protected setValidityTimer(I)V
    .locals 3
    .param p1, "validityPeriod"    # I

    .line 569
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setValidityTimer: validityPeriod:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mMinValidity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mMinValidity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mMinValidity:I

    if-gt p1, v0, :cond_0

    .line 571
    iput p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->mMinValidity:I

    .line 572
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 574
    :cond_0
    return-void
.end method

.method work()V
    .locals 7

    .line 241
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    .line 242
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    const/16 v2, 0x14

    .line 244
    .local v2, "count":I
    :goto_0
    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    .line 246
    :try_start_0
    invoke-interface {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 272
    :goto_1
    goto/16 :goto_2

    .line 264
    :catch_0
    move-exception v3

    .line 265
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 266
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown exception occur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 1 sec. and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->sleep(J)V

    .line 270
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    move-object v0, v4

    .line 271
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 259
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 260
    .local v3, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException occur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string v5, "finish workflow"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    move-object v0, v4

    .line 263
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .end local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_1

    .line 253
    :catch_2
    move-exception v3

    .line 254
    .local v3, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UnknownStatusException occur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 2 sec. and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const-wide/16 v4, 0x7d0

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->sleep(J)V

    .line 257
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    move-object v0, v4

    .line 258
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    goto/16 :goto_1

    .line 247
    :catch_3
    move-exception v3

    .line 248
    .local v3, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoInitialDataException occur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 10 sec. and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;->sleep(J)V

    .line 251
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowCmcc;Lcom/sec/internal/ims/config/workflow/WorkflowCmcc$1;)V

    move-object v0, v4

    .line 252
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto/16 :goto_1

    .line 273
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 275
    :cond_1
    return-void
.end method
