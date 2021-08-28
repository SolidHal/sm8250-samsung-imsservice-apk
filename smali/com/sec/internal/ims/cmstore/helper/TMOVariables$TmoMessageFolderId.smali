.class public Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;
.super Ljava/lang/Object;
.source "TMOVariables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/helper/TMOVariables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TmoMessageFolderId"
.end annotation


# static fields
.field public static mCallHistory:Ljava/lang/String;

.field public static mMediaFax:Ljava/lang/String;

.field public static mRCSMessageStore:Ljava/lang/String;

.field public static mVVMailGreeting:Ljava/lang/String;

.field public static mVVMailInbox:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-string v0, ""

    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mCallHistory:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mMediaFax:Ljava/lang/String;

    .line 8
    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mRCSMessageStore:Ljava/lang/String;

    .line 9
    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailInbox:Ljava/lang/String;

    .line 10
    sput-object v0, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailGreeting:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
