.class public Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;
.super Ljava/lang/Object;
.source "CallForwardingResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;
    }
.end annotation


# instance fields
.field public mForwardTo:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ss:forward-to"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action [mForwardTo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;->mForwardTo:Lcom/sec/internal/ims/entitlement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
