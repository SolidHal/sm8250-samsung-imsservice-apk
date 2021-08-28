.class public Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$Builder;
.super Ljava/lang/Object;
.source "NsdNetworkMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mNsdNetworkMessage:Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;-><init>(Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$1;)V

    iput-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$Builder;->mNsdNetworkMessage:Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    .line 60
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$Builder;->mNsdNetworkMessage:Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    return-object v0
.end method

.method public setEvent(I)Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$Builder;
    .locals 2
    .param p1, "event"    # I

    .line 63
    iget-object v0, p0, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage$Builder;->mNsdNetworkMessage:Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;

    invoke-static {v0}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->access$200(Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;)I

    move-result v1

    or-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;->access$202(Lcom/samsung/android/cmcnsd/network/NsdNetworkMessage;I)I

    .line 64
    return-object p0
.end method
