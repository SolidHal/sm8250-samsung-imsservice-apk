.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;
.super Ljava/lang/Object;
.source "RequestAccountEligibility.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    .line 40
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 9
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "strbody":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$000()Ljava/lang/String;

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

    .line 47
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1f7

    if-eq v1, v2, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0x1ad

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_3

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 59
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "jsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v2, "serviceEligibilityList"

    .line 61
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    .local v2, "jsonList":Lorg/json/JSONObject;
    const-string/jumbo v3, "serviceEligibility"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 63
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 64
    .local v4, "jsonEligibility":Lorg/json/JSONObject;
    const-string v5, "isEligible"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 65
    .local v5, "isEligible":Z
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "account eligible: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    if-eqz v5, :cond_1

    .line 68
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    const-string v7, "not eligible"

    invoke-static {v6, v7}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 73
    .end local v1    # "jsonRoot":Lorg/json/JSONObject;
    .end local v2    # "jsonList":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "jsonEligibility":Lorg/json/JSONObject;
    .end local v5    # "isEligible":Z
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 49
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 50
    .local v1, "retryAfter":I
    if-lez v1, :cond_3

    .line 51
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 53
    return-void

    .line 55
    .end local v1    # "retryAfter":I
    :cond_3
    nop

    .line 77
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    return-void

    .line 80
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    const-string v2, "CpsDefaultError"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 85
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$000()Ljava/lang/String;

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

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;

    const-string v1, "CpsDefaultError"

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccountEligibility;Ljava/lang/String;)V

    .line 87
    return-void
.end method
