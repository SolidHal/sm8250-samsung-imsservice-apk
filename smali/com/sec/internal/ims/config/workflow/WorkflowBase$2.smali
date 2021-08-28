.class Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;
.super Landroid/database/ContentObserver;
.source "WorkflowBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 1431
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1436
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1437
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/settings/GlobalSettingsConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "rcs_custom_config_server_url"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1439
    .local v0, "serverUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(Landroid/content/Context;II)I

    move-result v1

    .line 1440
    .local v1, "autoConfigSource":I
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v4, "rcs_up_profile"

    invoke-static {v3, v4, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1442
    .local v2, "rcsUPProfile":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrl:Ljava/lang/String;

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    .line 1443
    invoke-static {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$700(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsUPProfile:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1444
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "new rcs_custom_config_server_url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", new rcs_autoconfig_source="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", new rcs_up_profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iput-object v0, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsCustomServerUrl:Ljava/lang/String;

    .line 1448
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->access$702(Lcom/sec/internal/ims/config/workflow/WorkflowBase;I)I

    .line 1449
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeMessages(I)V

    .line 1450
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->sendEmptyMessage(I)Z

    .line 1453
    .end local v0    # "serverUrl":Ljava/lang/String;
    .end local v1    # "autoConfigSource":I
    .end local v2    # "rcsUPProfile":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIsUsingcheckSetToGS:Z

    if-eqz v0, :cond_2

    .line 1454
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->checkSetToGS(Ljava/util/Map;)V

    .line 1456
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getIdentityByPhoneId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mIdentity:Ljava/lang/String;

    .line 1457
    return-void
.end method
