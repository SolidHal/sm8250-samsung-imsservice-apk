.class public Lcom/sec/internal/ims/cmstore/CloudMessageIntent$Action;
.super Ljava/lang/Object;
.source "CloudMessageIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/cmstore/CloudMessageIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final CALLLOGDATADELETEFAILURE:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.CALLLOGDATADELETEFAILURE"

.field public static final CALLLOGINTENT:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.CALLLOGDATA"

.field public static final MSGDELETEFAILURE:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.MSGDELETEFAILURE"

.field public static final MSGINTENT:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.MSGDATA"

.field public static final MSGINTENT_INITSYNCEND:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.MSGDATA.INITIALSYNCEND"

.field public static final MSGINTENT_INITSYNCFAIL:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.MSGDATA.INITIALSYNCFAIL"

.field public static final MSGINTENT_INITSYNSTART:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.MSGDATA.INITIALSYNCSTART"

.field public static final MSGUIINTENT:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.MSGUI"

.field public static final VVMDATADELETEFAILURE:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.VVMDATADELETEFAILURE"

.field public static final VVMINTENT:Ljava/lang/String; = "com.samsung.rcs.framework.cloudmessage.action.VVMDATA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
