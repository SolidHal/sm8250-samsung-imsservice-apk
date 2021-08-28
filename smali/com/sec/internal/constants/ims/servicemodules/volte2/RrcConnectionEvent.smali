.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;
.super Ljava/lang/Object;
.source "RrcConnectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;
    }
.end annotation


# instance fields
.field mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;


# direct methods
.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    .line 13
    return-void
.end method


# virtual methods
.method public getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->mEvent:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    return-object v0
.end method
