.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;
.super Ljava/lang/Object;
.source "RequestCreateAccount.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 45
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "strBody":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strbody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_1

    .line 49
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastApiRequestCreateAccount(Z)V

    .line 51
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTbs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserTbsRquired(Z)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;)V

    .line 56
    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    .line 66
    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 67
    return-void

    .line 59
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 60
    .local v1, "retryAfter":I
    if-lez v1, :cond_4

    .line 61
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 63
    return-void

    .line 65
    .end local v1    # "retryAfter":I
    :cond_4
    nop

    .line 70
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    const-string v2, "CpsDefaultError"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Http request onFail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    const-string v1, "CpsDefaultError"

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;Ljava/lang/String;)V

    .line 77
    return-void
.end method
