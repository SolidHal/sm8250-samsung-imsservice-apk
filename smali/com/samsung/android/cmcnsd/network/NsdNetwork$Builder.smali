.class public Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
.super Ljava/lang/Object;
.source "NsdNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/network/NsdNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-direct {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 158
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cmcnsd/network/NsdNetwork;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    return-object v0
.end method

.method public from(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    .locals 0
    .param p1, "network"    # Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 161
    if-eqz p1, :cond_0

    .line 162
    iput-object p1, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    .line 164
    :cond_0
    return-object p0
.end method

.method public setAuthenticationToken(Ljava/lang/String;)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$202(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setCapabilities(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    .locals 1
    .param p1, "capabilities"    # Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 188
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$402(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 189
    return-object p0
.end method

.method public setConnected(Z)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    .locals 1
    .param p1, "isConnected"    # Z

    .line 168
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$002(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Z)Z

    .line 169
    return-object p0
.end method

.method public setHostAddress(Ljava/lang/String;)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    .locals 1
    .param p1, "hostAddress"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$102(Lcom/samsung/android/cmcnsd/network/NsdNetwork;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public setInterfaceNameList(Ljava/util/List;)Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;"
        }
    .end annotation

    .line 183
    .local p1, "infNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetwork$Builder;->mNetwork:Lcom/samsung/android/cmcnsd/network/NsdNetwork;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetwork;->access$300(Lcom/samsung/android/cmcnsd/network/NsdNetwork;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    return-object p0
.end method
