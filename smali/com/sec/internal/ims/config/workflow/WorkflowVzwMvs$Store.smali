.class Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;
.super Ljava/lang/Object;
.source "WorkflowVzwMvs.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Store"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;

    .line 1149
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    .line 1153
    .local v0, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1154
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "Store: rcsDisabledState is valid, need to set the opmode"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1155
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 1157
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq v0, v1, :cond_0

    .line 1158
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "Store: no need to retry for rcsDisabledState"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1159
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v1

    .line 1162
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    if-nez v1, :cond_1

    .line 1163
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "Store: immediately perform retry"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1164
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    .line 1165
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v1

    .line 1166
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 1167
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Store: mRcsDisabledStateRetryCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v5, v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mRcsDisabledStateRetryTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    iget-object v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v6, v6, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    aget-wide v5, v5, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1169
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->registerGeneralErrorRetryIntentReceiver()V

    .line 1170
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->GeneralErrorRetryTime:[J

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    aget-wide v3, v3, v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->startGeneralErrorRetryTimer(J)V

    .line 1171
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mRcsDisabledStateRetryCount:I

    .line 1172
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;

    invoke-direct {v3, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    iput-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1173
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v1

    .line 1175
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->LOG_TAG:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mPhoneId:I

    const-string v4, "Store: no need to retry anymore for rcsDisabledState"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1176
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iput-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mGeneralErrorRetryNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1177
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v1

    .line 1179
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v3, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    iget-object v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 1180
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v1, v3, :cond_4

    .line 1181
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->getValidity()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;->setValidityTimer(I)V

    .line 1183
    :cond_4
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;

    invoke-direct {v1, v3, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs;Lcom/sec/internal/ims/config/workflow/WorkflowVzwMvs$1;)V

    return-object v1
.end method
