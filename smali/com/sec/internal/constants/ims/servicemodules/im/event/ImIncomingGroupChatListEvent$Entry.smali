.class public Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;
.super Ljava/lang/Object;
.source "ImIncomingGroupChatListEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public pConvID:Ljava/lang/String;

.field public sessionUri:Landroid/net/Uri;

.field public subject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionUri"    # Landroid/net/Uri;
    .param p2, "pConvID"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    .line 38
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->pConvID:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->subject:Ljava/lang/String;

    .line 40
    return-void
.end method
