.class public Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;
.super Lcom/sec/internal/ims/core/handler/secims/StackEventListener;
.source "UserAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UserAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    .line 2061
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-direct {p0}, Lcom/sec/internal/ims/core/handler/secims/StackEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactActivated(I)V
    .locals 3
    .param p1, "handle"    # I

    .line 2217
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContactActivated: handle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2218
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2219
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onContactActivated(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)V

    .line 2221
    :cond_0
    return-void
.end method

.method public onDeregistered(ILcom/sec/ims/util/SipError;I)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;
    .param p3, "retryAfter"    # I

    .line 2136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeregistered: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " retryAfter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2138
    return-void

    .line 2140
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1502(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 2141
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1602(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)I

    .line 2142
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 2143
    return-void
.end method

.method public onISIMAuthRequested(ILjava/lang/String;I)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "nonce"    # Ljava/lang/String;
    .param p3, "tid"    # I

    .line 2065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onISIMAuthRequested: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " nonce "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onISIMAuthRequested: handle mismatch. mHandle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " handle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 2071
    return-void

    .line 2074
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 2076
    .local v0, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2077
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getImpi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-interface {v1, p2, v2, v0, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->requestSoftphoneAuthentication(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;I)V

    goto :goto_0

    .line 2079
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1, p2, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 2081
    :goto_0
    return-void
.end method

.method public onRefreshRegNotification(I)V
    .locals 1
    .param p1, "handle"    # I

    .line 2210
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRefreshRegNotification(I)V

    .line 2213
    :cond_0
    return-void
.end method

.method public onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;)V
    .locals 4
    .param p1, "handle"    # I
    .param p3, "isRegi"    # I
    .param p4, "contactUriType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2226
    .local p2, "contactUriInfoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegEventContactUri: handle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserAgent"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2228
    .local v0, "urilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/util/ImsUri;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2229
    .local v2, "regeveturi":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2230
    .end local v2    # "regeveturi":Ljava/lang/String;
    goto :goto_0

    .line 2231
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2232
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    invoke-interface {v1, p1, v0, p3, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegEventContactUriNotification(ILjava/util/List;ILjava/lang/String;)V

    .line 2234
    :cond_1
    return-void
.end method

.method public onRegImpuNotification(ILjava/lang/String;)V
    .locals 6
    .param p1, "handle"    # I
    .param p2, "impu"    # Ljava/lang/String;

    .line 2184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRegImpuNotification: handle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2186
    return-void

    .line 2188
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 2189
    .local v0, "phoneId":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.imsservice.REGISTERED_IMPU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2190
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "phoneid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2191
    const-string v2, "impu"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2192
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.stk"

    const-string v4, "com.android.stk.StkCmdReceiver"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    .local v2, "component":Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2195
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2197
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.stk2"

    const-string v5, "com.android.stk2.StkCmdReceiver"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 2199
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2200
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    iget-object v3, v3, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2201
    return-void
.end method

.method public onRegInfoNotification(ILcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;)V
    .locals 2
    .param p1, "handle"    # I
    .param p2, "regInfo"    # Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/RegInfoChanged;

    .line 2160
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2161
    return-void

    .line 2164
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(ILjava/lang/Object;)V

    .line 2165
    return-void
.end method

.method public onRegistered(ILjava/util/List;Ljava/util/List;Lcom/sec/ims/util/SipError;IILjava/lang/String;)V
    .locals 5
    .param p1, "handle"    # I
    .param p4, "error"    # Lcom/sec/ims/util/SipError;
    .param p5, "retryAfter"    # I
    .param p6, "ecmpMode"    # I
    .param p7, "sipResponse"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/ims/util/SipError;",
            "II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2086
    .local p2, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "impuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegistered: handle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ecmpMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " serviceList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2090
    return-void

    .line 2093
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_2

    .line 2094
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v0, p4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRegistered: Empty IRS. deregister."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2097
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->deregisterInternal(Z)V

    .line 2098
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2099
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    sget-object v2, Lcom/sec/internal/constants/ims/SipErrorBase;->MISSING_P_ASSOCIATED_URI:Lcom/sec/ims/util/SipError;

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegistrationError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;I)V

    .line 2102
    :cond_1
    return-void

    .line 2105
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0, p7}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3102(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 2106
    const/4 v0, 0x0

    .line 2107
    .local v0, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2108
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2109
    .local v2, "impu":Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 2110
    if-eqz v0, :cond_3

    .line 2111
    iget-object v3, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/sec/ims/util/NameAddr;

    invoke-direct {v4, v0}, Lcom/sec/ims/util/NameAddr;-><init>(Lcom/sec/ims/util/ImsUri;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2113
    .end local v2    # "impu":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 2115
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1, p6}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3302(Lcom/sec/internal/ims/core/handler/secims/UserAgent;I)I

    .line 2116
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1, p4}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$1502(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 2118
    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorBase;->OK_SMC:Lcom/sec/ims/util/SipError;

    invoke-virtual {v1, p4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 2123
    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 2124
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v1, v2, p4, p5}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onRegistrationError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;I)V

    .line 2127
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$600(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2129
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v2, 0x384

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    goto :goto_2

    .line 2119
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$3400(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2121
    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(I)V

    .line 2132
    :cond_8
    :goto_2
    return-void
.end method

.method public onSubscribed(ILcom/sec/ims/util/SipError;)V
    .locals 3
    .param p1, "handle"    # I
    .param p2, "error"    # Lcom/sec/ims/util/SipError;

    .line 2147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribed: handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2150
    return-void

    .line 2153
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2154
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onSubscribeError(Lcom/sec/internal/ims/core/handler/secims/UserAgent;Lcom/sec/ims/util/SipError;)V

    .line 2156
    :cond_1
    return-void
.end method

.method public onUpdatePani()V
    .locals 2

    .line 2204
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2205
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$200(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent$UaEventListener;->onUpdatePani(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)V

    .line 2207
    :cond_0
    return-void
.end method

.method public onUpdateRouteTableRequested(IILjava/lang/String;)V
    .locals 4
    .param p1, "handle"    # I
    .param p2, "operation"    # I
    .param p3, "ipAddress"    # Ljava/lang/String;

    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAgent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "onUpdateRouteTableRequested:"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v0}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$100(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateRouteTableRequested: handle mismatch. mHandle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    invoke-static {v2}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->access$000(Lcom/sec/internal/ims/core/handler/secims/UserAgent;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " handle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    return-void

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UserAgent$EventListener;->this$0:Lcom/sec/internal/ims/core/handler/secims/UserAgent;

    const/16 v1, 0x66

    const/4 v2, 0x0

    .line 2179
    invoke-virtual {v0, v1, p2, v2, p3}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2178
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/handler/secims/UserAgent;->sendMessage(Landroid/os/Message;)V

    .line 2180
    return-void
.end method
