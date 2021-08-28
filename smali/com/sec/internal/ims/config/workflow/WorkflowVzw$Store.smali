.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;
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
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 1021
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;

    .line 1021
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1024
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion(Ljava/util/Map;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 1025
    .local v0, "versionChange":Z
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "versionChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1027
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v4, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    .line 1028
    .local v1, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1029
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "set opMode for rcsDisabledState"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v6, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 1031
    const v4, 0x13020403

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",RDS:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1032
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const/4 v7, -0x1

    invoke-static {v4, v7, v6}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 1033
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "self provisioning procedure isn\'t completed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v2, v3, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v2

    .line 1037
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mBackOffRetryCount: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    const/4 v6, 0x5

    if-ge v4, v6, :cond_2

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_2

    .line 1039
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "backOffRetryTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    iget-object v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v8, v8, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const v4, 0x13020404

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",BRT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    iget-object v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v8, v8, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1041
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": backOffRetryTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    iget-object v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v8, v8, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    aget-wide v7, v7, v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->addEventLog(Ljava/lang/String;)V

    .line 1042
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    sget-object v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v7, v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    aget-wide v6, v6, v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sleep(J)V

    .line 1043
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v6, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    add-int/2addr v6, v2

    iput v6, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    .line 1044
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iput-boolean v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    .line 1045
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v2, v3, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v2

    .line 1047
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v3, "no need to retry for rcsDisabledState"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v2, v3, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v2

    .line 1050
    :cond_3
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "set opMode for rcsVersion"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 1052
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsReceivedMinusVerison: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-boolean v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-boolean v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    if-nez v2, :cond_4

    .line 1054
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getValidity()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setValidityTimer(I)V

    .line 1056
    :cond_4
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v2, v3, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    return-object v2
.end method
