.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;
.super Ljava/lang/Object;
.source "RequestTC.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    .line 41
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 6
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 44
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "strBody":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onComplete StatusCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " strbodyEmpty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " strbody: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const-string v2, "CpsDefaultError"

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_1

    .line 49
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 51
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, "JsonRoot":Lorg/json/JSONObject;
    const-string/jumbo v3, "tc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 53
    .local v3, "jsonObjTc":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    const-string v5, "id"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$102(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveTermConditionId(Ljava/lang/String;)V

    .line 55
    const-string v4, "Url"

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Text"

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 56
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-void

    .line 60
    .end local v1    # "JsonRoot":Lorg/json/JSONObject;
    .end local v3    # "jsonObjTc":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Lorg/json/JSONException;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v3}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v1    # "ex":Lorg/json/JSONException;
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1f7

    if-eq v1, v3, :cond_2

    .line 65
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1ad

    if-ne v1, v3, :cond_3

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 67
    .local v1, "retryAfter":I
    if-lez v1, :cond_3

    .line 68
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 70
    return-void

    .line 73
    .end local v1    # "retryAfter":I
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;)Ljava/lang/String;

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

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    const-string v1, "CpsDefaultError"

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;->access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;Ljava/lang/String;)V

    .line 80
    return-void
.end method
