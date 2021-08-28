.class Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
.super Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;
.source "CallForwardingData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Rule"
.end annotation


# instance fields
.field fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;-><init>()V

    .line 11
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 12
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 15
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 16
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 17
    return-void
.end method
