.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;
.super Ljava/lang/Object;
.source "RequestDeleteAccount.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 6
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 46
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "strBody":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$000()Ljava/lang/String;

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

    .line 49
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V

    .line 52
    return-void

    .line 55
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, "body":Lorg/json/JSONObject;
    const-string v2, "deletedServiceAccountList"

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    .local v2, "deletedServiceAccountList":Lorg/json/JSONObject;
    const-string/jumbo v3, "serviceAccount"

    .line 59
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 61
    .local v3, "serviceAccount":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "serviceId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "deleted successfully"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V

    .line 67
    return-void

    .line 69
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V

    .line 70
    return-void

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    return-void

    .line 74
    .end local v1    # "body":Lorg/json/JSONObject;
    .end local v2    # "deletedServiceAccountList":Lorg/json/JSONObject;
    .end local v3    # "serviceAccount":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    .end local v1    # "e":Lorg/json/JSONException;
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_4

    .line 79
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_5

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 81
    .local v1, "retryAfter":I
    if-lez v1, :cond_5

    .line 82
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 84
    return-void

    .line 88
    .end local v1    # "retryAfter":I
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 89
    return-void

    .line 91
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V

    .line 92
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 1
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;->access$800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;)V

    .line 98
    return-void
.end method
