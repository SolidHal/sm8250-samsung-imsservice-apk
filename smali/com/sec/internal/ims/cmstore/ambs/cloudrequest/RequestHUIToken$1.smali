.class Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;
.super Ljava/lang/Object;
.source "RequestHUIToken.java"

# interfaces
.implements Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

.field final synthetic val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field final synthetic val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    .line 46
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)V
    .locals 10
    .param p1, "result"    # Lcom/sec/internal/helper/httpclient/HttpResponseParams;

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "strBody":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$000()Ljava/lang/String;

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

    .line 54
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const-string v2, "ERR_HUITOKEN_JSON"

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_7

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 57
    const-string v1, "ENCOREESB."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    .line 58
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NOT 6014"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHUI6014Err(Z)V

    .line 60
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string v3, "msToken=\""

    const-string v4, "\""

    invoke-static {v1, v0, v3, v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "msToken":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string/jumbo v5, "serverID=\""

    invoke-static {v3, v0, v5, v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "serverID":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string/jumbo v6, "redirectDomain=\""

    invoke-static {v5, v0, v6, v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "redirectDomain":Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string v7, "cometRedirectDomain=\""

    invoke-static {v6, v0, v7, v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "cometRedirectDomain":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msToken="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", serverID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", redirectDomain="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", cometRedirectDomain"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v6

    if-nez v6, :cond_0

    .line 68
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    new-instance v7, Ljava/net/HttpCookie;

    const-string v8, "MSToken"

    invoke-direct {v7, v8, v1}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$202(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/net/HttpCookie;)Ljava/net/HttpCookie;

    .line 69
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 70
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$200(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 72
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    new-instance v7, Ljava/net/HttpCookie;

    const-string v8, "SERVERID"

    invoke-direct {v7, v8, v3}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$302(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/net/HttpCookie;)Ljava/net/HttpCookie;

    .line 73
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    .line 74
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v6}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$300(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)Ljava/net/HttpCookie;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/net/HttpCookie;->setVersion(I)V

    .line 76
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 78
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMsgStoreSessionId(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nms value in SP ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getNmsHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNmsHost(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$400(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNmsHost(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNcHost(Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRedirectDomain()Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "oldRedirectDomain":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRedirectDomain(Ljava/lang/String;)V

    .line 93
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 94
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "redirect domain changed, need mail reset."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v7, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    sget-object v8, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->MAILBOX_MIGRATION_RESET:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onGoToEvent(ILjava/lang/Object;)V

    .line 97
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v7

    .line 98
    invoke-virtual {v7, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveLastApiRequestCreateAccount(Z)V

    .line 99
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$500(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)V

    .line 100
    return-void

    .line 102
    .end local v1    # "msToken":Ljava/lang/String;
    .end local v3    # "serverID":Ljava/lang/String;
    .end local v4    # "cometRedirectDomain":Ljava/lang/String;
    .end local v5    # "redirectDomain":Ljava/lang/String;
    .end local v6    # "oldRedirectDomain":Ljava/lang/String;
    :cond_3
    goto :goto_3

    .line 103
    :cond_4
    nop

    .line 104
    const-string v1, "ENCOREESB.SECURITY-6014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_6

    .line 108
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveIfHUI6014Err(Z)V

    .line 109
    invoke-static {}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getInstance()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isLastAPIRequestCreateAccount()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 111
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Last successful API call was CreateServiceAccount"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    const-string v2, "Last_Retry_Create_Account"

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$600(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$700(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    .line 118
    :goto_1
    return-void

    .line 120
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$800(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    .line 121
    return-void

    .line 123
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1f7

    if-eq v1, v3, :cond_9

    .line 124
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getStatusCode()I

    move-result v1

    const/16 v3, 0x1ad

    if-ne v1, v3, :cond_8

    goto :goto_2

    .line 132
    :cond_8
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1000(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Ljava/lang/String;)V

    .line 133
    return-void

    .line 125
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$900(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)I

    move-result v1

    .line 126
    .local v1, "retryAfter":I
    if-lez v1, :cond_a

    .line 127
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$callFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->val$httpInterface:Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    const-string v4, "RetryAfterRule"

    invoke-interface {v2, v3, v4, v1}, Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;->onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V

    .line 129
    return-void

    .line 131
    .end local v1    # "retryAfter":I
    :cond_a
    nop

    .line 136
    :goto_3
    return-void
.end method

.method public onFail(Ljava/io/IOException;)V
    .locals 3
    .param p1, "arg1"    # Ljava/io/IOException;

    .line 140
    invoke-static {}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$000()Ljava/lang/String;

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

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken$1;->this$0:Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;->access$1100(Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestHUIToken;)V

    .line 144
    return-void
.end method
