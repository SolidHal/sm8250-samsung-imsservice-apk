.class Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;
.super Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;
.source "CapabilityProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    .line 156
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    invoke-direct {p0}, Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 6
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    if-nez p1, :cond_0

    .line 160
    return-void

    .line 163
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 164
    .local v1, "uri":Lcom/sec/ims/util/ImsUri;
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/helper/UriUtil;->equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$202(Z)Z

    .line 166
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$302(Z)Z

    .line 167
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 170
    :cond_1
    const/4 v2, 0x0

    .line 171
    .local v2, "found":Lcom/sec/ims/util/ImsUri;
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    .line 172
    .local v4, "pendingUri":Lcom/sec/ims/util/ImsUri;
    invoke-static {v4, v1}, Lcom/sec/internal/helper/UriUtil;->equals(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    move-object v2, v4

    .line 174
    goto :goto_2

    .line 176
    .end local v4    # "pendingUri":Lcom/sec/ims/util/ImsUri;
    :cond_2
    goto :goto_1

    .line 178
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 179
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$600(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 183
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$700(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;Lcom/sec/ims/util/ImsUri;)V

    .line 184
    .end local v1    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v2    # "found":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 185
    :cond_5
    return-void
.end method

.method public onCapabilityAndAvailabilityPublished(I)V
    .locals 0
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    return-void
.end method

.method public onMultipleCapabilitiesChanged(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/ims/options/Capabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    .local p2, "capexList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/options/Capabilities;>;"
    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$202(Z)Z

    .line 196
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$302(Z)Z

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$800(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1$1;->this$1:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider$1;->this$0:Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;->access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityProvider;)V

    .line 199
    return-void
.end method
