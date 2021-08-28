.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;
.super Ljava/lang/Object;
.source "WorkflowVzw.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchHttpsForEapAka"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;

    .line 898
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    .line 903
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 905
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchHttpsForEapAka: mAkaResponse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$300(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$300(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$300(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 951
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "set only eap_payld param"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    .line 953
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$300(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EAP_PAYLD"

    invoke-virtual {v0, v4, v3}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$500(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 907
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    .line 908
    .local v0, "vers":I
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 909
    .local v3, "versbackup":I
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " versbackup: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v4

    const/16 v5, 0x3b

    if-le v0, v4, :cond_2

    if-ne v0, v5, :cond_4

    .line 911
    :cond_2
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v4

    if-lt v3, v4, :cond_3

    if-eq v3, v5, :cond_3

    .line 912
    move v4, v3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v4

    :goto_1
    move v0, v4

    .line 914
    :cond_4
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set vers to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "vers"

    invoke-virtual {v4, v6, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getToken()Ljava/lang/String;

    move-result-object v4

    .line 918
    .local v4, "token":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v7, "token"

    invoke-virtual {v5, v7, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "token: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    .line 923
    :cond_5
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IMSI"

    invoke-virtual {v5, v8, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 921
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$400(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "IMSI_EAP"

    invoke-virtual {v5, v8, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :goto_3
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImei()Ljava/lang/String;

    move-result-object v7

    const-string v8, "IMEI"

    invoke-virtual {v5, v8, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v7, "terminal_vendor"

    const-string v8, "SEC"

    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v7, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v9, "terminal_model"

    invoke-virtual {v5, v9, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v9, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v9, v9, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    .line 930
    invoke-static {v9}, Lcom/sec/internal/ims/util/ConfigUtil;->getModelName(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v11, 0x8

    .line 929
    invoke-virtual {v7, v9, v10, v11, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "terminal_sw_version"

    invoke-virtual {v5, v9, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v7, "client_vendor"

    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RCSAndr-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v8, v8, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mClientVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "client_version"

    invoke-virtual {v5, v8, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsVersion:Ljava/lang/String;

    const-string/jumbo v8, "rcs_version"

    invoke-virtual {v5, v8, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v7, "set rcs_profile to UP_1.0"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v7, "rcs_profile"

    const-string v8, "UP_1.0"

    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v7, "provisioning_version"

    const-string v8, "2.0"

    invoke-virtual {v5, v7, v8}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-boolean v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSmsDefaultApp:Z

    if-eqz v7, :cond_7

    .line 940
    const-string v7, "1"

    goto :goto_4

    :cond_7
    const-string v7, "2"

    .line 939
    :goto_4
    const-string v8, "default_sms_app"

    invoke-virtual {v5, v8, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-boolean v7, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSmsDefaultApp:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsStateWithSpecificParam()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_8
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v7}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    .line 942
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "rcs_state"

    invoke-virtual {v5, v8, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-boolean v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    if-eqz v5, :cond_9

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 945
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v7, "mStartForce: true, set vers and rcsState to 0"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v5, v8, v7}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    .line 950
    .end local v0    # "vers":I
    .end local v3    # "versbackup":I
    .end local v4    # "token":Ljava/lang/String;
    :cond_9
    nop

    .line 957
    :goto_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 958
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v3

    iput v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    .line 959
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchHttpsForEapAka: mHttpResponse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-ne v0, v3, :cond_b

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_a

    .line 962
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "response\'s body exists"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v0

    .line 965
    :cond_a
    new-instance v0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v1, "no body, something wrong"

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 966
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    const/16 v3, 0x1ff

    if-ne v0, v3, :cond_d

    .line 967
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v3, "511 is received, reset EapAka response and config info"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->access$500(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Ljava/lang/String;)V

    .line 969
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 970
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m511BackOffRetryCount: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_c

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    aget-wide v0, v0, v1

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-lez v0, :cond_c

    .line 972
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m511BackOffRetryTime: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    aget-wide v3, v3, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    aget-wide v3, v1, v3

    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sleep(J)V

    .line 974
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    .line 975
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0

    .line 977
    :cond_c
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "no need to retry for 511 error, go to finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v0

    .line 979
    :cond_d
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    const/16 v1, 0x193

    if-ne v0, v1, :cond_e

    .line 980
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "403 is received, go to finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iput-boolean v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived403Err:Z

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 983
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v0

    .line 984
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_f

    .line 985
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "500 is received, go to finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iput-boolean v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived500Err:Z

    .line 987
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v0

    .line 989
    :cond_f
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    invoke-direct {v1, v0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v3, v5, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
