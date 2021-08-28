.class public final Lcom/sec/internal/constants/ims/servicemodules/im/ImContract$Participant;
.super Ljava/lang/Object;
.source "ImContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/im/ImContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Participant"
.end annotation


# static fields
.field public static final ALIAS:Ljava/lang/String; = "alias"

.field public static final CHAT_ID:Ljava/lang/String; = "chat_id"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final PARTICIPANT_STATUS:Ljava/lang/String; = "status"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final URI:Ljava/lang/String; = "uri"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
