.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;
.super Ljava/lang/Object;
.source "PresenceSubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionRequest"
.end annotation


# instance fields
.field public isAlwaysForce:Z

.field public phoneId:I

.field public type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

.field public uri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZI)V
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p3, "isAlwaysForce"    # Z
    .param p4, "phoneId"    # I

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->isAlwaysForce:Z

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    .line 34
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 35
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->isAlwaysForce:Z

    .line 36
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->phoneId:I

    .line 37
    return-void
.end method
