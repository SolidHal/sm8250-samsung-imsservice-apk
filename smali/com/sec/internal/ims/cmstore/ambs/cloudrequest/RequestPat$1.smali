.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;
.super Ljava/lang/Object;
.source "RequestPat.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 5
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "strBody":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xce

    if-ne v1, v2, :cond_2

    .line 47
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    .local v2, "jsonObjToken":Lorg/json/JSONObject;
    const-string v3, "Encrypted"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "pat":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 53
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->savePATAndTime(Ljava/lang/String;)V

    .line 54
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 52
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "jsonObjToken":Lorg/json/JSONObject;
    .end local v3    # "pat":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "ex":Lorg/json/JSONException;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .end local v1    # "ex":Lorg/json/JSONException;
    :goto_0
    goto :goto_1

    .line 60
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_7

    .line 61
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_3

    goto :goto_2

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_4

    .line 69
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;)V

    .line 70
    return-void

    .line 71
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_5

    .line 72
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_6

    .line 73
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 74
    .local v1, "retryAfter":I
    if-lez v1, :cond_6

    .line 75
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 77
    return-void

    .line 80
    .end local v1    # "retryAfter":I
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;)V

    .line 81
    return-void

    .line 65
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    const-string/jumbo v2, "wrong sessionID"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 87
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;->access$100()Ljava/lang/String;

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

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestPat;)V

    .line 89
    return-void
.end method
