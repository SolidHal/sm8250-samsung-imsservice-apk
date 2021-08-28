.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;
.super Ljava/lang/Object;
.source "GroupChatInfoParams.java"


# instance fields
.field private final mOwnImsi:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ownImsi"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->mUri:Landroid/net/Uri;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->mOwnImsi:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public getOwnImsi()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->mOwnImsi:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/GroupChatInfoParams;->mUri:Landroid/net/Uri;

    return-object v0
.end method
