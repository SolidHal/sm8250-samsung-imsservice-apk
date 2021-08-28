.class Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowPrimaryDevice.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchHttps"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;
    .param p2, "x1"    # Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;

    .line 237
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->setSharedInfoWithParam()V

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_1

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "200 OK received. Body empty or null. Start Parsing."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 248
    .local v0, "json":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    const-string/jumbo v3, "{"

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v3}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "200 OK received. Body non-empty, but not Json either. Start Parsing"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v3, v4, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v3

    .line 258
    .end local v0    # "json":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_6

    .line 259
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mMobileNetwork:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mIsheaderEnrichment:Z

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v0

    const-string v2, "msisdn"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "no msisdn. try to get user"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mDialog:Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSimCountryCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;->getMsisdn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "msisdn":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 268
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "user didn\'t enter msisdn finish process"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v2

    .line 272
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUserMsisdn(Ljava/lang/String;)V

    .line 274
    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v2, v3, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v2

    .line 275
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "wrong MSISDN from USER. try again after 300"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    const/16 v2, 0x12c

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->setValidityTimer(I)V

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->mMsisdnHandler:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    const-string v2, ""

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->setMsisdnValue(Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v0

    .line 260
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->access$000(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "403 received. Finish"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v0, v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    return-object v0

    .line 282
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;

    invoke-direct {v2, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;)V

    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;

    iget-object v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;

    invoke-direct {v4, v5, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice$1;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowPrimaryDevice;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    return-object v0
.end method
