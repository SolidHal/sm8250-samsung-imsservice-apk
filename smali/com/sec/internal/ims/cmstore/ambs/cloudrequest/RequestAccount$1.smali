.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;
.super Ljava/lang/Object;
.source "RequestAccount.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 10
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 50
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "strbody":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$000()Ljava/lang/String;

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

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 56
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v2, "serviceAccountList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 58
    .local v2, "jsonList":Lorg/json/JSONObject;
    const-string/jumbo v3, "serviceAccount"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const-string v4, "HAP.REQACCOUNT.GET_TC"

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 64
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 65
    .local v5, "jsonStatus":Lorg/json/JSONObject;
    const-string/jumbo v6, "status"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "status":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "200OK non empty response, status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string v7, "Active"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Provisioned"

    .line 69
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v7, v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V

    .line 78
    return-void

    .line 72
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    const-string v7, "HAP.REQACCOUNT.EXIST_USER"

    invoke-static {v4, v7}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V

    .line 73
    return-void

    .line 61
    .end local v5    # "jsonStatus":Lorg/json/JSONObject;
    .end local v6    # "status":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v5, v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    return-void

    .line 80
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "jsonList":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v1    # "e":Lorg/json/JSONException;
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_5

    .line 84
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_6

    .line 85
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 86
    .local v1, "retryAfter":I
    if-lez v1, :cond_6

    .line 87
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 89
    return-void

    .line 92
    .end local v1    # "retryAfter":I
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    return-void

    .line 96
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    const-string v2, "CpsDefaultError"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 101
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$000()Ljava/lang/String;

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

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;)V

    .line 103
    return-void
.end method
