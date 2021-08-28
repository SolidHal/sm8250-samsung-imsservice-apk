.class public Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;
.super Ljava/lang/Object;
.source "NsdNetworkCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mNsdNetworkCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;-><init>(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$1;)V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->mNsdNetworkCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    .line 105
    return-void
.end method


# virtual methods
.method public addCapability(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;
    .locals 3
    .param p1, "capability"    # I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->mNsdNetworkCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->access$300(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->access$302(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;I)I

    .line 114
    return-object p0
.end method

.method public addTransport(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;
    .locals 3
    .param p1, "transport"    # I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->mNsdNetworkCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->access$200(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->access$202(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;I)I

    .line 109
    return-object p0
.end method

.method public build()Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->mNsdNetworkCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    return-object v0
.end method

.method public combineCapabilities(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;
    .locals 2
    .param p1, "capabilities"    # I

    .line 123
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->mNsdNetworkCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->access$300(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;)I

    move-result v1

    or-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->access$302(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;I)I

    .line 124
    return-object p0
.end method

.method public setCapabilities(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;
    .locals 1
    .param p1, "capabilities"    # I

    .line 118
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities$Builder;->mNsdNetworkCapabilities:Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;

    invoke-static {v0, p1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;->access$302(Lcom/samsung/android/cmcnsd/network/NsdNetworkCapabilities;I)I

    .line 119
    return-object p0
.end method
