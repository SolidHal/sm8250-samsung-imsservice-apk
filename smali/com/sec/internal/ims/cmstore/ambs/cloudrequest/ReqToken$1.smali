.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;
.super Ljava/lang/Object;
.source "ReqToken.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 40
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "strBody":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strBody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const-string v2, "default_error_type"

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    .line 43
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    const-string v1, "atsToken="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 45
    nop

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "atsToken":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAtsToken(Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)V

    .line 52
    return-void

    .line 54
    .end local v1    # "atsToken":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1f7

    if-eq v1, v3, :cond_3

    .line 58
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1ad

    if-ne v1, v3, :cond_2

    goto :goto_0

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 60
    .local v1, "retryAfter":I
    if-lez v1, :cond_4

    .line 61
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 64
    .end local v1    # "retryAfter":I
    :cond_4
    nop

    .line 67
    :goto_1
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)Ljava/lang/String;

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

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqToken;)V

    .line 73
    return-void
.end method
