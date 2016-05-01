LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := liblove
LOCAL_CFLAGS    := -fexceptions -g -Dlinux -Dunix -DANDROID -D__ANDROID__ \
	-DHAVE_GCC_DESTRUCTOR=1 -DOPT_GENERIC -DREAL_IS_FLOAT \
	-DGL_GLEXT_PROTOTYPES -DLOVE_TURBO_JPEG -DLOVE_NO_DEVIL \
	-DAL_ALEXT_PROTOTYPES -DSCP_UNIX

LOCAL_CPPFLAGS  := ${LOCAL_CFLAGS}

LOCAL_C_INCLUDES  :=  \
	${LOCAL_PATH}/mongoose \
	${LOCAL_PATH}/ \
	${LOCAL_PATH}/code \
	${LOCAL_PATH}/code/ai \
	${LOCAL_PATH}/src/modules \
	${LOCAL_PATH}/src/libraries/ \
	${LOCAL_PATH}/src/libraries/enet/libenet/include \
	${LOCAL_PATH}/../SDL2-2.0.4/include \
	${LOCAL_PATH}/../jasper-1.900.1/src/libjasper/include \
	${LOCAL_PATH}/../libmng-1.0.10/ \
	${LOCAL_PATH}/../lcms2-2.5/include \
	${LOCAL_PATH}/../tiff-3.9.5/libtiff \
	${LOCAL_PATH}/../openal-soft-1.17.0/include \
	${LOCAL_PATH}/../openal-soft-1.17.0/OpenAL32/Include \
	${LOCAL_PATH}/../freetype2-android/include \
	${LOCAL_PATH}/../freetype2-android/src \
	${LOCAL_PATH}/../physfs-2.1.0/src \
	${LOCAL_PATH}/../mpg123-1.17.0/src/libmpg123 \
	${LOCAL_PATH}/../libmodplug-0.8.8.4/src \
	${LOCAL_PATH}/../libvorbis-1.3.5/include \
	${LOCAL_PATH}/../LuaJIT-2.1/src \
	${LOCAL_PATH}/../libogg-1.3.2/include \
	${LOCAL_PATH}/../libtheora-1.2.0alpha1/include \
	${LOCAL_PATH}/../glshim/include \
	${LOCAL_PATH}/../png/include \
	${LOCAL_PATH}/../jansson/android \
	${LOCAL_PATH}/../jansson/src \
	${LOCAL_PATH}/../jpeg/include

	# $(filter-out \
	#   src/modules/graphics/opengl/GLee.* \
	#   src/libraries/luasocket/libluasocket/wsocket.c \
	# ,$(subst $(LOCAL_PATH)/,,\

MONGOOSE_SOURCES := \
	mongoose/mongoose.c

JOY_SOURCES := \
	code/io/joy-unix.cpp

UNIX_SOURCES := \
	code/osapi/osapi_unix.cpp	\
	code/osapi/osregistry_unix.cpp	\
	code/osapi/outwnd_unix.cpp	\
	code/windows_stub/stubs.cpp

MAIN_SOURCES := \
	code/freespace2/freespace.cpp	\
	code/freespace2/levelpaging.cpp

GLOB_SOURCES := \
	code/android/glob.c

LOCAL_SRC_FILES := \
	code/ai/ai.cpp	\
	code/ai/aibig.cpp	\
	code/ai/aicode.cpp	\
	code/ai/aigoals.cpp	\
	code/ai/aiturret.cpp	\
	code/ai/ai_profiles.cpp	\
	code/anim/animplay.cpp	\
	code/anim/packunpack.cpp	\
	code/asteroid/asteroid.cpp	\
	code/autopilot/autopilot.cpp	\
	code/bmpman/bmpman.cpp	\
	code/camera/camera.cpp	\
	code/cfile/cfile.cpp	\
	code/cfile/cfilearchive.cpp	\
	code/cfile/cfilelist.cpp	\
	code/cfile/cfilesystem.cpp	\
	code/cmdline/cmdline.cpp	\
	code/cmeasure/cmeasure.cpp	\
	code/controlconfig/controlsconfig.cpp	\
	code/controlconfig/controlsconfigcommon.cpp	\
	code/cutscene/cutscenes.cpp	\
	code/cutscene/decoder16.cpp	\
	code/cutscene/decoder8.cpp	\
	code/cutscene/movie.cpp	\
	code/cutscene/mve_audio.cpp	\
	code/cutscene/mvelib.cpp	\
	code/cutscene/mveplayer.cpp	\
	code/cutscene/oggplayer.cpp	\
	code/ddsutils/ddsutils.cpp	\
	code/debris/debris.cpp	\
	code/debugconsole/console.cpp	\
	code/debugconsole/consolecmds.cpp	\
	code/debugconsole/consoleparse.cpp	\
	code/exceptionhandler/exceptionhandler.cpp	\
	code/external_dll/trackirglobal.cpp	\
	code/fireball/fireballs.cpp	\
	code/fireball/warpineffect.cpp	\
	code/fs2netd/fs2netd_client.cpp	\
	code/fs2netd/tcp_client.cpp	\
	code/fs2netd/tcp_socket.cpp	\
	code/gamehelp/contexthelp.cpp	\
	code/gamehelp/gameplayhelp.cpp	\
	code/gamesequence/gamesequence.cpp	\
	code/gamesnd/eventmusic.cpp	\
	code/gamesnd/gamesnd.cpp	\
	code/globalincs/alphacolors.cpp	\
	code/globalincs/def_files.cpp	\
	code/globalincs/fsmemory.cpp	\
	code/globalincs/profiling.cpp	\
	code/globalincs/safe_strings.cpp	\
	code/globalincs/safe_strings_test.cpp	\
	code/globalincs/systemvars.cpp	\
	code/globalincs/version.cpp	\
	code/graphics/2d.cpp	\
	code/graphics/font.cpp	\
	code/graphics/generic.cpp	\
	code/graphics/grbatch.cpp	\
	code/graphics/gropengl.cpp	\
	code/graphics/gropenglbmpman.cpp	\
	code/graphics/gropengldraw.cpp	\
	code/graphics/gropenglextension.cpp	\
	code/graphics/gropengllight.cpp	\
	code/graphics/gropenglpostprocessing.cpp	\
	code/graphics/gropenglshader.cpp	\
	code/graphics/gropenglstate.cpp	\
	code/graphics/gropengltexture.cpp	\
	code/graphics/gropengltnl.cpp	\
	code/graphics/grstub.cpp	\
	code/graphics/shadows.cpp \
	code/hud/hud.cpp	\
	code/hud/hudartillery.cpp	\
	code/hud/hudbrackets.cpp	\
	code/hud/hudconfig.cpp	\
	code/hud/hudescort.cpp	\
	code/hud/hudets.cpp	\
	code/hud/hudlock.cpp	\
	code/hud/hudmessage.cpp	\
	code/hud/hudnavigation.cpp	\
	code/hud/hudobserver.cpp	\
	code/hud/hudparse.cpp	\
	code/hud/hudreticle.cpp	\
	code/hud/hudshield.cpp	\
	code/hud/hudsquadmsg.cpp	\
	code/hud/hudtarget.cpp	\
	code/hud/hudtargetbox.cpp	\
	code/hud/hudwingmanstatus.cpp	\
	code/iff_defs/iff_defs.cpp	\
	code/inetfile/cftp.cpp	\
	code/inetfile/chttpget.cpp	\
	code/inetfile/inetgetfile.cpp	\
	code/io/key.cpp	\
	code/io/keycontrol.cpp	\
	code/io/mouse.cpp	\
	code/io/timer.cpp	\
	code/jpgutils/jpgutils.cpp	\
	code/jumpnode/jumpnode.cpp	\
	code/lab/lab.cpp	\
	code/lab/wmcgui.cpp	\
	code/lighting/lighting.cpp	\
	code/localization/fhash.cpp	\
	code/localization/localize.cpp	\
	code/math/fix.cpp	\
	code/math/floating.cpp	\
	code/math/fvi.cpp	\
	code/math/spline.cpp	\
	code/math/staticrand.cpp	\
	code/math/vecmat.cpp	\
	code/menuui/barracks.cpp	\
	code/menuui/credits.cpp	\
	code/menuui/fishtank.cpp	\
	code/menuui/mainhallmenu.cpp	\
	code/menuui/mainhalltemp.cpp	\
	code/menuui/optionsmenu.cpp	\
	code/menuui/optionsmenumulti.cpp	\
	code/menuui/playermenu.cpp	\
	code/menuui/readyroom.cpp	\
	code/menuui/snazzyui.cpp	\
	code/menuui/techmenu.cpp	\
	code/menuui/trainingmenu.cpp	\
	code/mission/missionbriefcommon.cpp	\
	code/mission/missioncampaign.cpp	\
	code/mission/missiongoals.cpp	\
	code/mission/missiongrid.cpp	\
	code/mission/missionhotkey.cpp	\
	code/mission/missionload.cpp	\
	code/mission/missionlog.cpp	\
	code/mission/missionmessage.cpp	\
	code/mission/missionparse.cpp	\
	code/mission/missiontraining.cpp	\
	code/missionui/chatbox.cpp	\
	code/missionui/fictionviewer.cpp	\
	code/missionui/missionbrief.cpp	\
	code/missionui/missioncmdbrief.cpp	\
	code/missionui/missiondebrief.cpp	\
	code/missionui/missionloopbrief.cpp	\
	code/missionui/missionpause.cpp	\
	code/missionui/missionscreencommon.cpp	\
	code/missionui/missionshipchoice.cpp	\
	code/missionui/missionweaponchoice.cpp	\
	code/missionui/redalert.cpp	\
	code/mod_table/mod_table.cpp \
	code/model/modelanim.cpp	\
	code/model/modelcollide.cpp	\
	code/model/modelinterp.cpp	\
	code/model/modeloctant.cpp	\
	code/model/modelread.cpp	\
	code/model/modelrender.cpp   \
	code/nebula/neb.cpp	\
	code/nebula/neblightning.cpp	\
	code/network/chat_api.cpp	\
	code/network/multi.cpp	\
	code/network/multilag.cpp	\
	code/network/multimsgs.cpp	\
	code/network/multiteamselect.cpp	\
	code/network/multiui.cpp	\
	code/network/multiutil.cpp	\
	code/network/multi_campaign.cpp	\
	code/network/multi_data.cpp	\
	code/network/multi_dogfight.cpp	\
	code/network/multi_endgame.cpp	\
	code/network/multi_ingame.cpp	\
	code/network/multi_kick.cpp	\
	code/network/multi_log.cpp	\
	code/network/multi_obj.cpp	\
	code/network/multi_observer.cpp	\
	code/network/multi_options.cpp	\
	code/network/multi_pause.cpp	\
	code/network/multi_pinfo.cpp	\
	code/network/multi_ping.cpp	\
	code/network/multi_pmsg.cpp	\
	code/network/multi_pxo.cpp	\
	code/network/multi_rate.cpp	\
	code/network/multi_respawn.cpp	\
	code/network/multi_sexp.cpp	\
	code/network/multi_team.cpp	\
	code/network/multi_voice.cpp	\
	code/network/multi_xfer.cpp	\
	code/network/psnet2.cpp	\
	code/network/stand_gui.cpp	\
	code/network/stand_gui-unix.cpp	\
	code/object/collidedebrisship.cpp	\
	code/object/collidedebrisweapon.cpp	\
	code/object/collideshipship.cpp	\
	code/object/collideshipweapon.cpp	\
	code/object/collideweaponweapon.cpp	\
	code/object/deadobjectdock.cpp	\
	code/object/objcollide.cpp	\
	code/object/objectdock.cpp	\
	code/object/object.cpp	\
	code/object/objectshield.cpp	\
	code/object/objectsnd.cpp	\
	code/object/objectsort.cpp	\
	code/object/parseobjectdock.cpp	\
	code/object/waypoint.cpp	\
	code/observer/observer.cpp	\
	code/palman/palman.cpp	\
	code/parse/encrypt.cpp	\
	code/parse/generic_log.cpp	\
	code/parse/lua.cpp	\
	code/parse/parselo.cpp	\
	code/parse/scripting.cpp	\
	code/parse/sexp.cpp	\
	code/particle/particle.cpp	\
	code/pcxutils/pcxutils.cpp	\
	code/pilotfile/pilotfile.cpp	\
	code/pilotfile/pilotfile_convert.cpp	\
	code/pilotfile/plr.cpp	\
	code/pilotfile/csg.cpp	\
	code/pilotfile/plr_convert.cpp	\
	code/pilotfile/csg_convert.cpp	\
	code/pngutils/pngutils.cpp	\
	code/physics/physics.cpp	\
	code/playerman/managepilot.cpp	\
	code/playerman/playercontrol.cpp	\
	code/popup/popup.cpp	\
	code/popup/popupdead.cpp	\
	code/radar/radar.cpp	\
	code/radar/radardradis.cpp	\
	code/radar/radarorb.cpp	\
	code/radar/radarsetup.cpp	\
	code/render/3dclipper.cpp	\
	code/render/3ddraw.cpp	\
	code/render/3dlaser.cpp	\
	code/render/3dmath.cpp	\
	code/render/3dsetup.cpp	\
	code/ship/afterburner.cpp	\
	code/ship/awacs.cpp	\
	code/ship/shield.cpp	\
	code/ship/ship.cpp	\
	code/ship/shipcontrails.cpp	\
	code/ship/shipfx.cpp	\
	code/ship/shiphit.cpp	\
	code/sound/audiostr.cpp	\
	code/sound/acm.cpp	\
	code/sound/ds.cpp	\
	code/sound/ds3d.cpp	\
	code/sound/dscap.cpp	\
	code/sound/fsspeech.cpp	\
	code/sound/openal.cpp	\
	code/sound/rtvoice.cpp	\
	code/sound/sound.cpp	\
	code/sound/speech.cpp	\
	code/sound/voicerec.cpp	\
	code/sound/ogg/ogg.cpp	\
	code/species_defs/species_defs.cpp	\
	code/starfield/nebula.cpp	\
	code/starfield/starfield.cpp	\
	code/starfield/supernova.cpp	\
	code/stats/medals.cpp	\
	code/stats/scoring.cpp	\
	code/stats/stats.cpp	\
	code/tgautils/tgautils.cpp	\
	code/ui/button.cpp	\
	code/ui/checkbox.cpp	\
	code/ui/gadget.cpp	\
	code/ui/icon.cpp	\
	code/ui/inputbox.cpp	\
	code/ui/keytrap.cpp	\
	code/ui/listbox.cpp	\
	code/ui/radio.cpp	\
	code/ui/scroll.cpp	\
	code/ui/slider.cpp	\
	code/ui/slider2.cpp	\
	code/ui/uidraw.cpp	\
	code/ui/uimouse.cpp	\
	code/ui/window.cpp	\
	code/weapon/beam.cpp	\
	code/weapon/corkscrew.cpp	\
	code/weapon/emp.cpp	\
	code/weapon/flak.cpp	\
	code/weapon/muzzleflash.cpp	\
	code/weapon/shockwave.cpp	\
	code/weapon/swarm.cpp	\
	code/weapon/trails.cpp	\
	code/weapon/weapons.cpp	\
	${MONGOOSE_SOURCES} \
	${JOY_SOURCES} \
	${UNIX_SOURCES} \
	${GLOB_SOURCES} \
	${MAIN_SOURCES}


LOCAL_CXXFLAGS := -std=c++0x

LOCAL_SHARED_LIBRARIES := libopenal libmpg123 jansson

LOCAL_STATIC_LIBRARIES := glshim glues jpeg png libphysfs libvorbis libogg libtheora libfreetype libluajit SDL2_static

# $(info liblove: include dirs $(LOCAL_C_INCLUDES))
# $(info liblove: src files $(LOCAL_SRC_FILES))

SDL_PATH := ../SDL2-2.0.4
LOCAL_SRC_FILES += $(SDL_PATH)/src/main/android/SDL_android_main.c
LOCAL_LDLIBS := -lz -lGLESv1_CM -lGLESv2 -ldl -landroid

include $(BUILD_SHARED_LIBRARY)
