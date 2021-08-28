.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;
.super Ljava/lang/Object;
.source "ReqSession.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

.field final synthetic val$retryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$retryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 10
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const-string v1, "default_error_type"

    const/16 v2, 0x12e

    if-ne v0, v2, :cond_d

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const-string v2, "location"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 54
    .local v0, "locationInHead":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 55
    .local v2, "location":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 56
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Ljava/lang/String;

    .line 59
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "location: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    .line 64
    return-void

    .line 67
    :cond_1
    const/4 v3, -0x1

    .line 68
    .local v3, "indexOfTargeUrl":I
    const/4 v4, -0x1

    .line 69
    .local v4, "errorStrIndex":I
    if-eqz v2, :cond_2

    .line 70
    sget-object v5, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ACMS_TARGET_URL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 71
    const-string v5, "errorCode"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 74
    :cond_2
    if-ltz v4, :cond_3

    .line 75
    const/16 v1, 0x26

    const-string v5, "errorCode="

    invoke-static {v2, v5, v1}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->findErrorCode(Ljava/lang/String;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "errorCode":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errorCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v5, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    .line 78
    return-void

    .line 80
    .end local v1    # "errorCode":Ljava/lang/String;
    :cond_3
    if-ltz v3, :cond_c

    .line 81
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$retryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 82
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object v1

    .line 83
    .local v1, "lastFailedApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    const-string v5, "HAP.STEADY.STATE.REQ.HUIMSTOKEN"

    if-nez v1, :cond_5

    .line 84
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 85
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v6, v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "not steady state"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    .line 90
    :goto_0
    return-void

    .line 92
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "lastFailedApiName":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastFailedApiName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "SteadyState: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 93
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->ifSteadyState()Z

    move-result v7

    const-string v8, "HAP.DELETE.ACCOUNT"

    if-eqz v7, :cond_a

    .line 96
    const-class v7, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestCreateAccount;

    .line 97
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 98
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string v7, "HAP.CREATE.ACCOUNT"

    invoke-static {v5, v7}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_6
    const-class v7, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;

    .line 100
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 101
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string v7, "HAP.GET.SVC.ACCOUNT"

    invoke-static {v5, v7}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_1

    .line 102
    :cond_7
    const-class v7, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 103
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 102
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 104
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v5, v8}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :cond_8
    const-class v7, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestTC;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 106
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    const-string v7, "HAP.GET.TC"

    invoke-static {v5, v7}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :cond_9
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v7, v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$900(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_a
    const-class v5, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestDeleteAccount;

    .line 112
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 113
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v5, v8}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_b
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v5}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    .line 118
    :goto_1
    return-void

    .line 120
    .end local v0    # "locationInHead":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "lastFailedApi":Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .end local v2    # "location":Ljava/lang/String;
    .end local v3    # "indexOfTargeUrl":I
    .end local v4    # "errorStrIndex":I
    .end local v6    # "lastFailedApiName":Ljava/lang/String;
    :cond_c
    goto :goto_2

    :cond_d
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_e

    .line 121
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_f

    .line 122
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v0

    .line 123
    .local v0, "retryAfter":I
    if-lez v0, :cond_f

    .line 124
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v3, "RetryAfterRule"

    invoke-interface {v1, v2, v3, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 126
    return-void

    .line 129
    .end local v0    # "retryAfter":I
    :cond_f
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "all other responses"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 136
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$000()Ljava/lang/String;

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

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;->access$1400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqSession;)V

    .line 138
    return-void
.end method
