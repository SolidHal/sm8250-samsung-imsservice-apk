.class public Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;
.super Ljava/lang/Object;
.source "ImIncomingGroupChatListEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;
    }
.end annotation


# instance fields
.field public entryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;",
            ">;"
        }
    .end annotation
.end field

.field public mOwnImsi:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # I
    .param p3, "ownImsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 24
    .local p2, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->version:I

    .line 26
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->entryList:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->mOwnImsi:Ljava/lang/String;

    .line 28
    return-void
.end method
